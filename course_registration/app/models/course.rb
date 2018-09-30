class Course < ActiveRecord::Base
  belongs_to :user
  has_many :attendance_sheets
  has_many :students, through: :attendance_sheets

  validates :name, presence: true
  validates :description, presence: true
  validates :section, presence: true

end
