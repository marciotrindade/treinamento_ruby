json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :las_name, :age, :email, :string
  json.url user_url(user, format: :json)
end
