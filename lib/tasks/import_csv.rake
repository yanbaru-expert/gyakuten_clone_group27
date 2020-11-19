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
        list = Import.csv_data(path: "db/csv_data/text_data.csv")
        Text.create!(list)
    end

    desc "LINEデータをインポートするタスク"
    task line_data: :environment do
        list = Import.csv_data(path: "db/csv_data/line_data.csv")
        Line.create!(list)
    end
    
end
