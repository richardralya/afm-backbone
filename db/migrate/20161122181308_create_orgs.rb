class CreateOrgs < ActiveRecord::Migration[5.0]
  def change
    create_table :orgs do |t|
      t.integer :channel_id
      t.string :name
      t.text :address
      t.string :plan
      t.integer :status

      t.timestamps
    end
  end
end
