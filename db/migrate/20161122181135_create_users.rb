class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :language
      t.string :timezone
      t.string :auth_type
      t.string :account_status
      t.integer :login_status
      t.decimal :organic_rank
      t.decimal :rank_boost
      t.integer :org_id
      t.integer :status

      t.timestamps
    end
  end
end

