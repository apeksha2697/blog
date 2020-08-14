FactoryBot.define do
  factory :user do
    first_name {"first"}
    last_name {"last"}
    email {"firstlast@gmail.com"}
    password {"123456"}
  end

  # factory :random_user, class: User do
  #   first_name {Faker::Name.first_name}
  #   last_name {Faker::Name.last_name}
  #   email {Faker::Internet.safe_email}
  #   password {Faker::Internet.password}
  # end
end