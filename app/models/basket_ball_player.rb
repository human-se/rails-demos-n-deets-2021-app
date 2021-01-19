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
class BasketBallPlayer < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :position, presence: true
  validates :height_inches, presence: true, numericality: { greater_than: 0 }
  validates :weight_lbs, presence: true, numericality: { greater_than: 0 }

end
