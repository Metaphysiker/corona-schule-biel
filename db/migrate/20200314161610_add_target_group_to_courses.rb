class AddTargetGroupToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :target_group, :string, default: ""
    add_column :courses, :organizer, :string, default: ""
  end
end
