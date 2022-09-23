FactoryBot.define do
  factory :author do
    sequence(:first_name) { |n| "First name #{n}" }
    sequence(:last_name) { |n| "Last name #{n}" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password { 'password' }
  end
end
