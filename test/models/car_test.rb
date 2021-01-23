# == Schema Information
#
# Table name: cars
#
#  id         :bigint           not null, primary key
#  color      :string
#  make       :string
#  model      :string
#  price      :decimal(, )
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
