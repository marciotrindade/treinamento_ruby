json.array!(@coments) do |coment|
  json.extract! coment, :id, :users_id, :coment, :posts_id
  json.url coment_url(coment, format: :json)
end
