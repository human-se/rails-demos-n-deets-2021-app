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
require "test_helper"

class EmployeeTest < ActiveSupport::TestCase

  test "fixture should be valid" do
    e = employees(:one)
    assert e.valid?, e.errors.full_messages.inspect
  end

  test "fname should exist" do
    e = employees(:one)
    e.fname = ''
    assert_not e.valid?, e.errors.full_messages.inspect
  end

  test "lname should exist" do
    e = employees(:one)
    e.lname = ''
    assert_not e.valid?, e.errors.full_messages.inspect
  end

  test "empid should exist" do
    e = employees(:one)
    e.empid = ''
    assert_not e.valid?, e.errors.full_messages.inspect
  end

  test "empid should be unique" do
    e = employees(:one).dup
    assert_not e.valid?, e.errors.full_messages.inspect
  end

  test "empid should be six digits" do
    e = employees(:one)
    e.empid = '12345'
    assert_not e.valid?, e.errors.full_messages.inspect
  end

end
