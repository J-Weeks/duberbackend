class CreateWalkers < ActiveRecord::Migration
  def change
    create_table :walkers do |t|
      t.string :email
      t.string :password
      t.string :address
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :url
      t.integer :rating

      t.timestamps null: false
    end
  end
end
