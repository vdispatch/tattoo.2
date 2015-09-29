json.array!(@artist_badges) do |artist_badge|
  json.extract! artist_badge, :id, :name, :description, :badge_image, :artist_id
  json.url artist_badge_url(artist_badge, format: :json)
end
