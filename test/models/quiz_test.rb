# == Schema Information
#
# Table name: quizzes
#
#  id          :bigint           not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class QuizTest < ActiveSupport::TestCase

  test "fixtures should be valid" do
    quizzes.each do |q|
      assert q.valid?, q.errors.full_messages.inspect
    end
  end

  test "title should be present" do
    q = quizzes(:one)
    q.title = ''
    assert_not q.valid?
    assert q.errors.include?(:title), q.errors.full_messages.inspect
  end

end
