# == Schema Information
#
# Table name: questions
#
#  id           :bigint           not null, primary key
#  answer       :string
#  distractor_1 :string
#  distractor_2 :string
#  question     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  quiz_id      :bigint
#
# Indexes
#
#  index_questions_on_quiz_id  (quiz_id)
#
# Foreign Keys
#
#  fk_rails_...  (quiz_id => quizzes.id)
#
require "test_helper"

class QuestionTest < ActiveSupport::TestCase

  test "fixtures should be valid" do
    questions.each do |q|
      assert q.valid?, q.errors.full_messages.inspect
    end
  end

  test "question should be present" do
    q = questions(:one)
    q.question = ''
    assert_not q.valid?
    assert q.errors.include?(:question), q.errors.full_messages.inspect
  end

  test "answer should be present" do
    q = questions(:one)
    q.answer = ''
    assert_not q.valid?
    assert q.errors.include?(:answer), q.errors.full_messages.inspect
  end

  test "distractor_1 should be present" do
    q = questions(:one)
    q.distractor_1 = ''
    assert_not q.valid?
    assert q.errors.include?(:distractor_1), q.errors.full_messages.inspect
  end

  test "distractor_2 should be present" do
    q = questions(:one)
    q.distractor_2 = ''
    assert_not q.valid?
    assert q.errors.include?(:distractor_2), q.errors.full_messages.inspect
  end

  test "choices should not be duplicates" do
    # Test that validation catches when answer and distractor_1 are the same
    q = questions(:one)
    q.distractor_1 = q.answer
    assert_not q.valid?
    assert q.errors.include?(:distractor_1), q.errors.full_messages.inspect
    # Test that validation catches when answer and distractor_2 are the same
    q = questions(:one)
    q.distractor_2 = q.answer
    assert_not q.valid?
    assert q.errors.include?(:distractor_2), q.errors.full_messages.inspect
    # Test that validation catches when distractor_1 and distractor_2 are the same
    q = questions(:one)
    q.distractor_2 = q.distractor_1
    assert_not q.valid?
    assert q.errors.include?(:distractor_2), q.errors.full_messages.inspect
  end

end
