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

  test "review_date must be after release_date" do
    review_one = reviews(:one)
    review_one.review_date = Date.new(1998, 3, 31)
    assert_not review_one.valid?
  end

end
