class Event < ApplicationRecord
  validates :title, :content, presence: true
  validates :start_time, :end_time,  presence: true

  validate :start_end_time
  validate :start_check

  def start_end_time
    errors.add(:start_time, "は開始時刻より遅い時間を選択してください") if self.start_time > self.end_time
  end

  def start_check
    errors.add(:start_time, "は現在の日時より遅い時間を選択してください") if self.start_time < Time.now
  end
end
