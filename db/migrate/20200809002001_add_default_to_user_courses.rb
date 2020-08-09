class AddDefaultToUserCourses < ActiveRecord::Migration[5.2]
  def change
    change_column :user_courses, :status, :integer, default: 0
  end
end
