FactoryBot.define do
  factory :new_user, class: User do
    email { "st120832@ait.asia" }
    password { "password" }
    password_confirmation { "password" }
    username {"st121832"}
  end

  factory :existing_user, class: User do
    email { "user@ait.asia" }
    username {"user"}
    password { "password" }
    password_confirmation { "password" }
  end

  factory :admin, class: AdminUser do
    email { "admin@example.com" }
    password { "123123" }
    password_confirmation { "123123" }
  end
end