require 'factory_bot'

FactoryBot.define do
  factory :user do
    first_name { "Joe" }
    last_name  { "Blow" }
    sequence(:email) {|n| "user#{n}@example.com" }
    avatar { 'default.png' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
