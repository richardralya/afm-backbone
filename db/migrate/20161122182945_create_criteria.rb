class CreateCriteria < ActiveRecord::Migration[5.0]
  def change
    create_table :criteria do |t|
      t.integer :item_id
      t.string :name
      t.text :content
      t.integer :cardinality
      t.integer :status

      t.timestamps
    end
  end
end
