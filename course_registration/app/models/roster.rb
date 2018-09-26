class Roster < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  has_many :students
end
