json.extract! user, :id, :password_digest, :name, :age, :sex, :area, :email, :freetext, :created_at, :updated_at
json.url user_url(user, format: :json)
