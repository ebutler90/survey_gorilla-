class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :password_digest, null: false
      t.string :gender
      t.integer :age
      t.string :email, null: false, unique: true
      t.timestamps null: false
    end
  end
end
