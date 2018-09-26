class Student < ActiveRecord::Base
  has_many :grades
  has_many :users, through: :courses
  has_many :courses

  validates :first_name, presence: true
  validates :last_name, presence: true



end
