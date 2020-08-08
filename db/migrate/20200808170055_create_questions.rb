class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :course, foreign_key: true
      t.string :assignment
      t.boolean :correct_answer

      t.timestamps
    end
  end
end
