class AddProjectToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :project, :string
  end
end
