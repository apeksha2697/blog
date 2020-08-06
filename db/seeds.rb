# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user = User.new(
  :first_name            => "Apeksha",
  :last_name             => "Singh",
  :email                 => "apekshasingh664@gmail.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
user.save!
user = User.new(
  :first_name            => "user",
  :last_name             => "2",
  :email                 => "user2@gmail.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
user.save!
articles = Article.create(
  :user_id            => 1,
  :title              =>"Television",
  :text               =>"Television (TV), sometimes shortened to tele or telly, is a telecommunication medium used for transmitting moving images in monochrome (black and white), or in color, and in two or three dimensions and sound. The term can refer to a television set, a television show, or the medium of television transmission. Television is a mass medium for advertising, entertainment, news, and sports."
)
articles.save!