class Student < ActiveRecord::Base
  has_many :registrations
  has_many :courses, through: :registrations
  has_many :grades
  has_many :users, through: :grades


  validates :first_name, presence: true
  validates :last_name, presence: true

end
