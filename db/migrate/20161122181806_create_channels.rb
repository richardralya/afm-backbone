class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.string :name
      t.text :content
      t.text :ui_content
      t.boolean :is_private
      t.integer :user_id
      t.integer :status

      t.timestamps
    end
  end
end