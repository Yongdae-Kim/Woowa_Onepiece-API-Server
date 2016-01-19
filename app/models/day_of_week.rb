class DayOfWeek < ApplicationRecord
  has_one :bus

  def self.find_by_dow_cd_id(dow_cd_id)
    where(dow_cd_id: dow_cd_id)
  end
end
