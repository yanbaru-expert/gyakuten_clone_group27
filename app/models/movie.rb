class Movie < ApplicationRecord
  validates :title, :url, presence: true
  has_many :watched_movies, dependent: :destroy
  has_many :watched_users, through: :watched_movies, source: :user
end
