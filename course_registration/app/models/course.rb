class Course < ActiveRecord::Base
  belongs_to :user
  has_many :registrations
  has_many :students, through: :registrations

  validates :name, presence: true
  validates :description, presence: true
  validates :section, presence: true

end
