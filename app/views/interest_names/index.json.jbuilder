json.array!(@interest_names) do |interest_name|
  json.extract! interest_name, :id, :name
  json.url interest_name_url(interest_name, format: :json)
end
