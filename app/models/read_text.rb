class ReadText < ApplicationRecord
  belongs_to :user
  belongs_to :text
  validates_uniqueness_of :text_id, scope: :user_id
end
