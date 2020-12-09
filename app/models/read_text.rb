class ReadText < ApplicationRecord
  belongs_to :user
  belongs_to :text, optional: true
end
