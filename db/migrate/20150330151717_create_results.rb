class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :choice
      t.references :user
      t.references :question
      t.timestamps null: false
    end
  end
end
