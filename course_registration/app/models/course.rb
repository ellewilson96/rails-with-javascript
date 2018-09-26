class Course < ActiveRecord::Base
  has_many :rosters
  has_many :users
  has_many :students

  validates :name, presence: true
  validates :description, presence: true
  validates :section, presence: true
end
