namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [Category, Article, User].each(&:delete_all)

    Category.populate 4 do |category|
      category.name    = Populator.words(1..3).titleize
      category.description = Populator.sentences(2..3)
    
      User.populate 5 do |user|
        user.username    = Faker::Name.name
        Article.populate 1..4 do |article|
          article.user_id = user.id
          article.title = Populator.words(1..5).titleize
          article.content = Populator.sentences(2..10)
          article.created_at = 2.years.ago..Time.now
          article.category_id = category.id
        end
      end
    end
  end
end