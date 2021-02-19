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
#
class Question < ApplicationRecord

  validates :question, presence: true
  validates :answer, presence: true
  validates :distractor_1, presence: true
  validates :distractor_2, presence: true
  validate :choices_cannot_be_duplicates
  
  def choices_cannot_be_duplicates
    if !answer.blank? && !distractor_1.blank? && answer == distractor_1
      errors.add(:distractor_1, "can't be the same as any other choice")
    end
    if !answer.blank? && !distractor_2.blank? && answer == distractor_2
      errors.add(:distractor_2, "can't be the same as any other choice")
    end
    if !distractor_1.blank? && !distractor_2.blank? && distractor_1 == distractor_2
      errors.add(:distractor_2, "can't be the same as any other choice")
    end
  end

end
