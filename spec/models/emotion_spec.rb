require 'rails_helper'

RSpec.describe Emotion, type: :model do
  it {should validate_presence_of(:recognize)}
  it {should belong_to(:user)}
  it {should belong_to(:category)}
end
