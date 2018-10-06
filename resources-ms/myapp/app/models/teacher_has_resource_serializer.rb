# == Schema Information
#
# Table name: teacher_has_resources
#
#  id          :integer          not null, primary key
#  teacher_id  :integer
#  resource_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TeacherHasResourceSerializer < ActiveModel::Serializer
  attributes :id, :teacher_name,:teacher_description,:teacher_id,:resource_id,:resource_name
  def teacher_name
  	Teacher.find(object.teacher_id).name
  end
  def teacher_description
  	Teacher.find(object.teacher_id).description
  end

  def resource_name
  	Resource.find(object.resource_id).name
  end
  
 
  
end
