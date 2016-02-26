#
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :address
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :url

      t.timestamps null: false
    end
  end
end
