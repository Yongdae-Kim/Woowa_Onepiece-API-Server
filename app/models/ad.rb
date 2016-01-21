class Ad < ApplicationRecord
  belongs_to :bus_stop, counter_cache: true
  has_one :ad_det
  has_many :imgs

  scope :code, lambda { |code|
    where(ad_cd_id: code.to_i) if code.present?
  }
end
