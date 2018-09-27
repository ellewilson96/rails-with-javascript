class Student < ActiveRecord::Base
  has_and_belongs_to_many :courses
  has_many :grades
  has_many :users, through: :grades


  validates :first_name, presence: true
  validates :last_name, presence: true

  def enrolled?(student)
     students.include?(student)
   end
end
