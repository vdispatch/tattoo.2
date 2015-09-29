class Project < ActiveRecord::Base
  belongs_to :user
  has_one :placement
end
