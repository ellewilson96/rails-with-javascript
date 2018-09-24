class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook]

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true

 has_many :grades
 has_many :students, through: :grades

 def self.from_omniauth(auth)
   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
     user.name = auth.info.name
     user.email = auth.info.email
     user.password = Devise.friendly_token[0,20]
     user.image = auth.info.image
   end
 end

 def self.new_with_session(params, session)
   super.tap do |user|
     if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
       user.email = data["email"] if user.email.blank?
     end
   end
 end
 
end
