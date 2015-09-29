class Studio < ActiveRecord::Base
  validates_formatting_of :website, using: :url
  validates_formatting_of :email, using: :email
end
