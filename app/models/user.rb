class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :texts, dependent: :destroy
  has_many :read_texts, dependent: :destroy
  has_many :watched_movies, dependent: :destroy
  has_many :events
end
