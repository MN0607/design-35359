FactoryBot.define do
  factory :design do
    title              { Faker::Lorem.sentence(word_count: 3) }
    explanation        { Faker::Lorem.sentence(word_count: 3) }
    category_id        { 2 }
    association :user
    after(:build) do |design|
      design.image.attach(io: File.open('public/images/test.jpg'), filename: 'test_image.png')
    end

  end
end
