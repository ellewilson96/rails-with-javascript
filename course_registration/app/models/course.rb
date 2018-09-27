class Course < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :students

  validates :name, presence: true
  validates :description, presence: true
  validates :section, presence: true

  def enrolled?(student)
    students.include?(student)
  end
end
