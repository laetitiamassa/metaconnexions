json.array!(@interests) do |interest|
  json.extract! interest, :id, :interest_name_id, :user_id
  json.url interest_url(interest, format: :json)
end
