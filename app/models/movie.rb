class Movie < ApplicationRecord
  validates :title, :url, presence: true

  def self.import(file)
    CSV.foreach('db/csv_data/movie_data.csv', headers: true) do |row|
      # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
      movie = find_by(id: row["id"]) || new
      # CSVからデータを取得し、設定する
      movie.attributes = row.to_hash.slice(*updatable_attributes)
      movie.save
    end
  end
  
  
  def self.updatable_attributes
    ['title', 'url']
  end
end
