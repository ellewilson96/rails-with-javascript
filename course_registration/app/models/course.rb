class Course < ActiveRecord::Base
  has_many :students
  has_many :users

  validates :name, presence: true
  validates :description, presence: true
  validates :section, presence: true
end
