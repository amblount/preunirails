json.extract! child, :id, :first_name, :last_name, :date_of_birth, :center_id, :created_at, :updated_at
json.url child_url(child, format: :json)