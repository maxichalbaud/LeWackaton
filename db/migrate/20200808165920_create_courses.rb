class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :video
      t.string :image
      t.references :company, foreign_key: true
      t.integer :category

      t.timestamps
    end
  end
end
