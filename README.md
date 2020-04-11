## 逆転教材クローンアプリ

### 開発環境

- Ruby 2.6.6
- Rails 6.0.3.2
- PostgreSQL

### 開発環境構築

```
git clone URL名
cd リポジトリ名
bundle config set path vendor/bundle --local
bundle install
yarn install --check-files
rails db:create db:migrate
```