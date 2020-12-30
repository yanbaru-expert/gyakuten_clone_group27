class Movie < ApplicationRecord
  validates :title, :url, presence: true
  has_many :watched_movies, dependent: :destroy
end
