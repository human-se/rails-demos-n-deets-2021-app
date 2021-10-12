# == Schema Information
#
# Table name: projects
#
#  id          :bigint           not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Project < ApplicationRecord

  has_many(
    :project_assignments,
    class_name: 'ProjectAssignment',
    foreign_key: 'project_id',
    inverse_of: :project,
    dependent: :destroy
  )
  has_many :employees, through: :project_assignments
  
  validates :title, presence: true

end
