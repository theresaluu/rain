class Emotion < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :recognize, presence: true
end
