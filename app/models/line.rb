class Line < ApplicationRecord
  validates :title, :genre, :content, presence: true
end
