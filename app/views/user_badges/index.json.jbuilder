json.array!(@user_badges) do |user_badge|
  json.extract! user_badge, :id, :name, :description, :badge_image
  json.url user_badge_url(user_badge, format: :json)
end
