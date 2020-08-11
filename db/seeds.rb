EMAIL = 'admin@example.com'
PASSWORD = 'password'

# user = User.find_or_create_by!(email: EMAIL) do |user|
#   user.password = PASSWORD
#   puts 'ユーザーの初期データインポートに成功しました。'
# end

adminuser = User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
end

