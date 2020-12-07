class Text < ApplicationRecord
  validates :title, :genre, :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user

  has_many :read_texts, dependent: :destroy
end
