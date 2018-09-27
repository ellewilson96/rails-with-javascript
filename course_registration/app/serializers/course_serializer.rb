class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :section, :description

  has_many :students
  belongs_to :user
end
