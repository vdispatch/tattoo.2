class UserBadges < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates_formatting_of :badge_image, using: :url
end
