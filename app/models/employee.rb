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

  validates :fname, :lname, :empid, presence: true
  validates :empid, format: { with: /\A\d{6}\z/ }
  validates :empid, uniqueness: true

end
