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
class Quiz < ApplicationRecord

  has_many(
    :questions,
    class_name: 'Question',
    foreign_key: 'quiz_id',
    inverse_of: :quiz,
    dependent: :destroy
  )

  validates :title, presence: true

end
