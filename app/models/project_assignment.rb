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
  belongs_to :employee
  belongs_to :project
end
