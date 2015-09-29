json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :studio_id, :facebook, :twitter, :instagram, :googleplus, :bio
  json.url artist_url(artist, format: :json)
end
