class Grade < ActiveRecord::Base
  belongs_to :student
  belongs_to :user

  validates :behavior, presence: true
  validates :score, presence: true

  def self.smartest_students
    order('score desc').first(3)
  end

end
