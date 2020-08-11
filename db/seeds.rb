EMAIL = 'test@example.com'
PASSWORD = 'password'
ADMIN_EMAIL = 'admin@example.com'

user = User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

adminuser = User.find_or_create_by!(email: ADMIN_EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

