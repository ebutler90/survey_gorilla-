class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.boolean :completed, default: false
      t.references :user
      t.references :survey
      t.timestamps null: false
    end
  end
end
