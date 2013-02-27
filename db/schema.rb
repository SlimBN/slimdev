# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130224205421) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "content"
    t.boolean  "is_draft"
    t.datetime "published_at"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "articles", ["slug"], :name => "index_articles_on_slug", :unique => true

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_category"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "continents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.integer  "continent_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "flaggings", :force => true do |t|
    t.string   "flaggable_type"
    t.integer  "flaggable_id"
    t.string   "flagger_type"
    t.integer  "flagger_id"
    t.string   "flag"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "flaggings", ["flag", "flaggable_type", "flaggable_id"], :name => "index_flaggings_on_flag_and_flaggable_type_and_flaggable_id"
  add_index "flaggings", ["flag", "flagger_type", "flagger_id", "flaggable_type", "flaggable_id"], :name => "access_flag_flaggings"
  add_index "flaggings", ["flaggable_type", "flaggable_id"], :name => "index_flaggings_on_flaggable_type_and_flaggable_id"
  add_index "flaggings", ["flagger_type", "flagger_id", "flaggable_type", "flaggable_id"], :name => "access_flaggings"

  create_table "follows", :force => true do |t|
    t.integer  "followable_id",                      :null => false
    t.string   "followable_type",                    :null => false
    t.integer  "follower_id",                        :null => false
    t.string   "follower_type",                      :null => false
    t.boolean  "blocked",         :default => false, :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "follows", ["followable_id", "followable_type"], :name => "fk_followables"
  add_index "follows", ["follower_id", "follower_type"], :name => "fk_follows"

  create_table "issues", :force => true do |t|
    t.integer  "number"
    t.datetime "published_at"
    t.integer  "journal_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "journals", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pages", :force => true do |t|
    t.integer  "number"
    t.integer  "pos1"
    t.integer  "pos2"
    t.integer  "pos3"
    t.integer  "pos4"
    t.integer  "pos5"
    t.integer  "pos6"
    t.integer  "pos7"
    t.integer  "pos8"
    t.integer  "pos9"
    t.integer  "pos10"
    t.integer  "pos11"
    t.integer  "pos12"
    t.integer  "pos13"
    t.integer  "pos14"
    t.integer  "pos15"
    t.integer  "pos16"
    t.integer  "issue_id"
    t.integer  "template_id"
    t.datetime "created_at",  :null => false
    t.string   "updated_at",  :null => false
  end

  create_table "pages_has_articles", :force => true do |t|
    t.integer  "page_id"
    t.integer  "articles_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "redactor_assets", :force => true do |t|
    t.integer  "user_id"
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], :name => "idx_redactor_assetable"
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_redactor_assetable_type"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.integer  "continent_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "templates", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "last_name"
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username"

end
