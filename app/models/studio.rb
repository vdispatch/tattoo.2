class Studio < ActiveRecord::Base
  validates_formatting_of :website, using: :url
end
