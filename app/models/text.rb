class Text < ApplicationRecord
  validates :title, :genre, :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :read_texts, dependent: :destroy
  has_many :watched_users, through: :read_texts, source: :user

  def read_by?(user)
    read_texts.find_by(user_id: user.id).present?
  end
end
