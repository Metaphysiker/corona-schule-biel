json.extract! course, :id, :title, :subject, :start_time, :end_time, :location, :description, :phone_number, :email, :status, :created_at, :updated_at
json.url course_url(course, format: :json)
