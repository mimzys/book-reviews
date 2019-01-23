require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    avatar { 'default.png' }
    password { 'password' }
    password_confirmation { 'password' }
  end

end
