ActiveAdmin.register Text do
  permit_params :genre, :title, :content, :image

  form do |f|
    f.inputs "Texts" do
      f.input :genre
      f.input :title
      f.input :content
      f.input :image, :as => :file
    end
    f.actions
  end
  
  # show do |item_image|
  #   attributes_table do
  #     row :genre
  #     row :title
  #     row :content
  #     # show画面で画像を表示するためのタグを追加
  #     row :image do
  #       image_tag(item_image.image)
  #     end
  #   end
  # end    
end
