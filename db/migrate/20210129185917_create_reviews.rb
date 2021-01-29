class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :body
      t.string :genre
      t.string :link
      t.date :release_date
      t.date :review_date
      t.decimal :score
      t.string :title

      t.timestamps
    end
  end
end
