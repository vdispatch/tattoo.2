class ArtistBadges < ActiveRecord::Base
  belongs_to :artist
  validates_formatting_of :badge_image, using: :url
end
