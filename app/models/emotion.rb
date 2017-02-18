class Emotion < ApplicationRecord
  validates :recognize, length: { maximum: 140 }, presence: true
end
