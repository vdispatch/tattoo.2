class Artist < ActiveRecord::Base
  belongs_to :studio
  has_many :techniques
  has_many :styles
  has_many :galleries
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :techniques
end
