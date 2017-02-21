class Category < ApplicationRecord
  has_many :emotions
  validates :name, inclusion: { in: %w(positive negative), message: 'Not a valid
                                category'}
end
