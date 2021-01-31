# == Schema Information
#
# Table name: reviews
#
#  id           :bigint           not null, primary key
#  body         :text
#  genre        :string
#  link         :string
#  release_date :date
#  review_date  :date
#  score        :decimal(, )
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class ReviewTest < ActiveSupport::TestCase

  test "all fixtures should be valid" do
    review_one = reviews(:one)
    assert review_one.valid?, review_one.errors.full_messages.inspect
  end

  test "body should be longer than 50 characters" do
    review_one = reviews(:one)
    review_one.body = '1 2 3 4 5'
    assert_not review_one.valid?
  end

end
