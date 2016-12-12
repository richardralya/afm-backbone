class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :item_id
      t.integer :criterium_id
      t.integer :user_id
      t.decimal :user_rank
      t.integer :rating
      t.integer :status

      t.timestamps
    end
  end
end
