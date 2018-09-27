class GradeSerializer < ActiveModel::Serializer
  attributes :behavior, :score

  belongs_to :student
end
