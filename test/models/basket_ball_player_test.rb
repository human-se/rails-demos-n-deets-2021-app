# == Schema Information
#
# Table name: basket_ball_players
#
#  id            :bigint           not null, primary key
#  first_name    :string
#  height_inches :integer
#  last_name     :string
#  position      :string
#  weight_lbs    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class BasketBallPlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
