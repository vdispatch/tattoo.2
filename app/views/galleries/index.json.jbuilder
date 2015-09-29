json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :artist_id, :title, :complete_date, :description, :time_taken, :image, :project_id
  json.url gallery_url(gallery, format: :json)
end
