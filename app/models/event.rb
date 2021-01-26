class Event < ApplicationRecord
  validates :title, :content, presence: true
  validates :start_time, :end_time, :start_day,  presence: true

  validate :start_end_time
  validate :start_check
  # validate :start_future
  validate :date_before_time

  def date_before_time
    errors.add(:start_time, "過去の日付を選択できません") if start_time < Date.today
  end

  def start_end_time
    if self.start_time >= self.end_time
      errors.add(:start_time,  "は開始時刻より遅い時間を選択してください")
    end
  end

  # def start_check
  #   if self.start_time < Date.today
  #   errors.add(:start_time, "は過去の日付を選択できません") 
  #   end
  # end

  # def start_future
  #   Time.current ==
  # end

end
