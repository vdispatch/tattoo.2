class Artist < ActiveRecord::Base
  belongs_to :studio
  has_many :techniques
end
