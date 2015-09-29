class Project < ActiveRecord::Base
  belongs_to :user
  has_one :placement
  has_many :artists
end
