json.array!(@skill_names) do |skill_name|
  json.extract! skill_name, :id, :name
  json.url skill_name_url(skill_name, format: :json)
end
