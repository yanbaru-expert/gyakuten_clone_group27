class Movie < ApplicationRecord
  validates :title, :url, presence: true
  has_many :watches
end
