class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content, null: false
      t.references :survey

      t.timestamps null: false
    end
  end
end
