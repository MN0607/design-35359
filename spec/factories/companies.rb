FactoryBot.define do
  factory :company do
    company_name          { 'RiceIsDessert,Inc.' }
    house_number          { '1-2-3,Ozeki' }
    building_name         { 'hakumaibuilding' }
    municipality          { 'Nishiuraku' }
    prefecture_id         { 2 }
    postal_code           { '123-4567' }
    phone_number          { 12_345_678_910 }
    email                 { Faker::Internet.free_email }
    password              { Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }
  end
end
