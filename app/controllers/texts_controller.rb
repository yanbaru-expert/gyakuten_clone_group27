class TextsController < ApplicationController
  def index
    @texts = AwsText.order(id: :asc)
     respond_to do |format|
      format.html
      format.csv do
        send_data(@texts.generate_csv, filename: "aws_text_data.csv")
      end
    end
  end

end
