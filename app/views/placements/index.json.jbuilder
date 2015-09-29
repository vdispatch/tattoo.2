json.array!(@placements) do |placement|
  json.extract! placement, :id, :body_part, :project_id
  json.url placement_url(placement, format: :json)
end
