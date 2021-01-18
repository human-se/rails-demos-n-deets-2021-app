class CreateBasketBallPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :basket_ball_players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.integer :height_inches
      t.integer :weight_lbs

      t.timestamps
    end
  end
end
