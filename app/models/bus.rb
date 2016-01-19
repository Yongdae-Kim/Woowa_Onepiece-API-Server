class Bus < ApplicationRecord
  belongs_to :day_of_week

  scope :code, lambda { |code|
    joins(:day_of_week).merge(
      DayOfWeek.find_by_dow_cd_id(code.to_i)
    ) if code.present?
  }
end
