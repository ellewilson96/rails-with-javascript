class Course < ActiveRecord::Base
  belongs_to :user
  has_many :students

  validates :name, presence: true
  validates :description, presence: true
  validates :section, presence: true
end
