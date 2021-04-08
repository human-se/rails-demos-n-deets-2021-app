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
require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  
  test "fixture should be valid" do
    p = projects(:one)
    assert p.valid?, p.errors.full_messages.inspect
  end

  test "title should exist" do
    p = projects(:one)
    p.title = ''
    assert_not p.valid?, p.errors.full_messages.inspect
  end

end
