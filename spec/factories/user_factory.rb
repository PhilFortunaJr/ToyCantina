FactoryBot.define do
  sequence(:email) {|n| "test#{n}@test.com"}
  factory :user do
    email
    password { "password123" }
    first_name { "Bob" }
    last_name { "WhatAbout" }
    admin { "false" }
  end
end
