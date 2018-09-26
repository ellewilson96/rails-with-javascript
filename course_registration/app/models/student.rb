class Student < ActiveRecord::Base
  has_many :grades
  has_many :users, through: :courses
  has_and_belongs_to_many :courses

  validates :first_name, presence: true
  validates :last_name, presence: true



end
