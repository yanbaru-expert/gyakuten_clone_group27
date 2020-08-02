require "import"
namespace :import_csv do
    desc "AWSテキストデータをインポートするタスク"
    task aws_texts: :environment do
        list = Import.csv_data(path: 'db/csv_data/aws_text_data.csv')
        Aws_Text.create!(list)
    end
end
