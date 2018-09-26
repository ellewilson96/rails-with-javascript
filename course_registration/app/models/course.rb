class Course < ActiveRecord::Base
  has_many :users
  has_and_belongs_to_many :students

  validates :name, presence: true
  validates :description, presence: true
  validates :section, presence: true
end
