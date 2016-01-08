class BusStop < ApplicationRecord
  has_many :ads
  belongs_to :ad
end
