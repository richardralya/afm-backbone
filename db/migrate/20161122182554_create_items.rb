class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :topic_id
      t.integer :user_id
      t.string :name
      t.text :content
      t.string :media_link
      t.integer :critera_count
      t.datetime :date_created
      t.datetime :date_modified
      t.integer :status

      t.timestamps
    end
  end
end
