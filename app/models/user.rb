class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :name, :last_name
  
  validates_presence_of :username
  validates_uniqueness_of :username



  #RELATIONS
  has_many :journals, dependent: :destroy 
  belongs_to :state 
  has_many :templates, dependent: :destroy 
  has_many :articles, dependent: :destroy 

  has_many :followed_journals, :through => :subscriptions, :source => :journal_id, dependent: :destroy
  belongs_to :subscriptions

  make_flagger


  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.nickname
      user.name = auth.info.name
      user.email = auth.info.email
    end
  end
  
  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end
  
  def password_required?
    super && provider.blank?
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end
end

