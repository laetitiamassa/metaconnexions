json.array!(@skills) do |skill|
  json.extract! skill, :id, :user_id, :skill_name_id
  json.url skill_url(skill, format: :json)
end
