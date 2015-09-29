json.array!(@styles) do |style|
  json.extract! style, :id, :type, :artist_id
  json.url style_url(style, format: :json)
end
