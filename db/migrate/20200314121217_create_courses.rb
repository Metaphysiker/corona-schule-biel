class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title, default: ""
      t.string :subject, default: ""
      t.datetime :start_time
      t.datetime :end_time
      t.text :location, default: ""
      t.text :description, default: ""
      t.string :phone_number, default: ""
      t.string :email, default: ""
      t.string :status, default: "open"

      t.timestamps
    end
  end
end
