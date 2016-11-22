class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.integer :channel_id
      t.integer :org_id
      t.integer :user_id
      t.string :name
      t.text :content
      t.boolean :is_private
      t.string :topic_type
      t.string :media_link
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :deadline_date
      t.datetime :date_created
      t.datetime :date_modified
      t.integer :status

      t.timestamps
    end
  end
end
