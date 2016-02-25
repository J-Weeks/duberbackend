#
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :address, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :description, null: false
      t.string :url, null: false

      t.timestamps null: false
    end
  end
end
