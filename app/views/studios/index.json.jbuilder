json.array!(@studios) do |studio|
  json.extract! studio, :id, :name, :address, :town, :county, :postcode, :country, :website, :email, :facebook, :twitter, :instagram, :googleplus, :googlebusiness
  json.url studio_url(studio, format: :json)
end
