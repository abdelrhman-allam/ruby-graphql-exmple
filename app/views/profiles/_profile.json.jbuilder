json.extract! profile, :id, :name, :description, :picture, :dateofbirth, :email, :created_at, :updated_at
json.url profile_url(profile, format: :json)
