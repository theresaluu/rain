require 'rails_helper'

RSpec.describe Emotion, type: :model do
  it {should validate_length_of(:recognize).is_at_most(140)}
  it {should validate_presence_of(:recognize)}
end
