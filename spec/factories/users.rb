FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "foo#{n}@example.com"}
    password { "password" }
  end
end
