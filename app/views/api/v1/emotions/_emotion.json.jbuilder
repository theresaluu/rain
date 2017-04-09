json.array! @emotions do |emotion|
  json.recognize emotion.recognize
  json.investigation emotion.investigation
  json.action_item emotion.action_item
  json.category emotion.category["name"]
  json.updated_at emotion.updated_at
  json.user emotion.user["email"] if current_user.present?
end
