FactoryGirl.define do
  factory :user do
    name     "User Test"
    email    "usertest@test.com"
    password "teste123"
    password_confirmation "teste123"
  end
end