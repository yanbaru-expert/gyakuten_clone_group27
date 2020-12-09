class Text < ApplicationRecord
  validates :title, :genre, :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :read_texts, dependent: :destroy

  def read_by?(current_user)
    read_texts.find_by(user_id: current_user.id).present?
  end
end
