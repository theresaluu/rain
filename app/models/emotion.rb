class Emotion < ApplicationRecord
  belongs_to :user

  validates :recognize, presence: true
end
