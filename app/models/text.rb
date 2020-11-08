class Text < ApplicationRecord
  validates :title, :genre, :content, presence: true
end
