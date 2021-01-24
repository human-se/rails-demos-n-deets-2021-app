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

  validate :review_date_must_be_after_release_date

  def review_date_must_be_after_release_date
    errors.add(:review_date, "must come after release date") unless review_date.after?(release_date)
  end
  
end
