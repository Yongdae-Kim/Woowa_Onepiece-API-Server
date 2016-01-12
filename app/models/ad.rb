class Ad < ApplicationRecord
  belongs_to :bus_stop, counter_cache: true
  has_one :ad_det
  has_many :imgs
end
