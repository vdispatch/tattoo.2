class Gallery < ActiveRecord::Base
  belongs_to :artist
  belongs_to :project
  has_one :placement
end
