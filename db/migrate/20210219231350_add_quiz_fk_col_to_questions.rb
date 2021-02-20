class AddQuizFkColToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :quiz, foreign_key: true
  end
end
