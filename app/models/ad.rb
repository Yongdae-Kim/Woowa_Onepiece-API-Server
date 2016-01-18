class Ad < ApplicationRecord
  belongs_to :bus_stop, counter_cache: true
  has_one :ad_det
  has_many :imgs

  scope :type, lambda { |type|
    where(ad_cd_id: type.to_i) if type.present?
  }

  scope :cnt, lambda { |cnt|
    limit(cnt) if cnt.present?
  }
end
