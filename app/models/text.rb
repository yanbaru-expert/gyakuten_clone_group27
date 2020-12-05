class Text < ApplicationRecord
  validates :title, :genre, :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user

  def already_read?(current_user)
    self.read_texts.exists?(text_id: text.id)
  end
end
