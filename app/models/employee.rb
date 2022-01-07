# == Schema Information
#
# Table name: employees
#
#  id         :bigint           not null, primary key
#  dob        :date
#  empid      :string
#  fname      :string
#  lname      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Employee < ApplicationRecord

  has_many(
    :project_assignments,
    class_name: 'ProjectAssignment',
    foreign_key: 'employee_id',
    inverse_of: :employee,
    dependent: :destroy
  )
  has_many :projects, through: :project_assignments
  
  validates :fname, :lname, :empid, presence: true
  validates :empid, format: { with: /\A\d{6}\z/ }
  validates :empid, uniqueness: true

  def full_name
    "#{fname} #{lname}"
  end

end
