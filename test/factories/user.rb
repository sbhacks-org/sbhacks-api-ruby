FactoryBot.define do
  factory :user do
    name { 'Akshay Heda' }
    sequence :email do |n|
      "akshay.#{n}@example.com"
    end
    password { 'ilovesbhacks' }
  end
end
