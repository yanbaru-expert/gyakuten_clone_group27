require "import"
namespace :import_csv do
    desc "AWSテキストデータをインポートするタスク"
    task aws_texts: :environment do
        list = Import.csv_data(path: 'db/csv_data/aws_text_data.csv')
        AwsText.create!(list)
    end
    
    desc "MOVIEデータをインポートするタスク"
    task movie_data: :environment do
        list = Import.csv_data(path: 'db/csv_data/movie_data.csv')
        Movie.create!(list)
    end

    desc "TEXTデータをインポートするタスク"
    task text: :environment do
        list = []
        path = File.join Rails.root, "db/csv_data/text_data.csv"
        CSV.foreach(path, headers: true) do |row|
            list << {
                image: File.open("#{Rails.root}/#{row['image']}"),
                genre: row["genre"],
                title: row["title"],
                content: row["content"]
            }
          end
        Text.create!(list)
    end

    desc "LINEデータをインポートするタスク"
    task line_data: :environment do
        list = Import.csv_data(path: "db/csv_data/line_data.csv")
        Line.create!(list)
    end
    
    desc "QUESTIONをインポートするタスク"
    task question: :environment do
        list = Import.csv_data(path: "db/csv_data/question_data.csv")
        Question.create!(list)
    end
end
