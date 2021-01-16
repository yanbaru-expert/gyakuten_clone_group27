class Event < ApplicationRecord
  validates :title, :content, presence: true
end
