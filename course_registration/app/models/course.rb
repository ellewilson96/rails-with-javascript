class Course < ActiveRecord::Base
  has_many :users
  has_many :students
  has_many :rosters

  validates :name, presence: true
  validates :description, presence: true
  validates :section, presence: true
end
