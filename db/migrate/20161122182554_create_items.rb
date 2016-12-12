class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :topic_id
      t.integer :user_id
      t.string :name
      t.text :content
      t.string :media_link
      t.string :author
      t.integer :status

      t.timestamps
    end
    
    add_index :items, :user_id
  end
end