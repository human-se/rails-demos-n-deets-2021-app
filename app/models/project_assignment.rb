# == Schema Information
#
# Table name: project_assignments
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :bigint           not null
#  project_id  :bigint           not null
#
# Indexes
#
#  index_project_assignments_on_employee_id  (employee_id)
#  index_project_assignments_on_project_id   (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (employee_id => employees.id)
#  fk_rails_...  (project_id => projects.id)
#
class ProjectAssignment < ApplicationRecord

  belongs_to(
    :employee,
    class_name: 'Employee',
    foreign_key: 'employee_id',
    inverse_of: :project_assignments
  )
  
  belongs_to(
    :project,
    class_name: 'Project',
    foreign_key: 'project_id',
    inverse_of: :project_assignments
  )

end
