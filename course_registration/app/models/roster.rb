class Roster < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  belongs_to :student
end
