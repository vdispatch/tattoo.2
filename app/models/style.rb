class Style < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :galleries
end
