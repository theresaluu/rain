require 'rails_helper'

RSpec.describe Category, type: :model do
  it {should have_many(:emotions)}
  it {
    should validate_inclusion_of(:name).in_array(%w(positive negative))
  }
end
