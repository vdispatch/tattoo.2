class Placement < ActiveRecord::Base
  belongs_to :project
  has_and_belongs_to_many :galleries
  has_and_belongs_to_many :projects
end
