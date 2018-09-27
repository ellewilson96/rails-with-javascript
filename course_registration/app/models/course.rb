class Course < ActiveRecord::Base
  has_many :rosters
  has_many :users, through: :rosters
  has_many :students

  validates :name, presence: true
  validates :description, presence: true
  validates :section, presence: true
end
