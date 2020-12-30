class Movie < ApplicationRecord
  validates :title, :url, presence: true
  has_many :watched_movies, dependent: :destroy
  has_many :watched_users, through: :watched_movies, source: :user

  def watched_by?(current_user)
    watched_movies.find_by(user_id: current_user.id).present?
  end
end