class CreateViewStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :view_statuses do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :status

      t.timestamps
    end
  end
end
