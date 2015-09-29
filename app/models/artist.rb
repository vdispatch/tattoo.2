class Artist < ActiveRecord::Base
  belongs_to :studio
  has_many :techniques
  has_many :styles
end
