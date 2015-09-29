json.array!(@techniques) do |technique|
  json.extract! technique, :id, :name, :description, :artist_id
  json.url technique_url(technique, format: :json)
end
