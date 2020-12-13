class Text < ApplicationRecord
  validates :title, :genre, :content, presence: true
  mount_uploader :image, ImageUploader
  has_many :read_texts, dependent: :destroy
  has_many :read_users, through: :read_texts, source: :user

  def rea_by?(current_user)
    read_texts.find_by(user_id: current_user.id).present?
  end
end
