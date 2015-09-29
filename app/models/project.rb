class Project < ActiveRecord::Base
  belongs_to :user
  has_one :placement
  has_many :artists
  has_many :galleries
  has_and_belongs_to_many :placements
end
