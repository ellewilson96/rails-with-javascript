class Student < ActiveRecord::Base
  has_many :grades
  has_many :rosters
  has_many :users
  has_many :courses


  validates :first_name, presence: true
  validates :last_name, presence: true

end
