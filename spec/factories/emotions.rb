FactoryGirl.define do
  factory :emotion do
    recognize       { Faker::Hipster.sentences(1) }
    investigation   { Faker::Hipster.paragraph(2) }
    action_item     { Faker::Company.bs }
    current         { Faker::Boolean.boolean }
  end
end
