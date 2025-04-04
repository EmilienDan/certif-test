class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :email
      t.references :offer_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
