class CreateUserCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_courses do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.string :status
      t.decimal :score

      t.timestamps
    end
  end
end
