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
class Review < ApplicationRecord

  validates :title, presence: true

end
