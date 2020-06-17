ActiveAdmin.register Post do
  permit_params :author_id, :title, :publish_date, :content,:image

  index do
    selectable_column
    id_column
    column :author
    column :title
    column :publish_date
    actions
  end

  filter :author
  filter :title
  filter :publish_date

  form do |f|
    f.inputs do
      f.input :title
      f.input :author
      f.input :publish_date, as: :datepicker
      f.input :content, as: :ckeditor # ここでckeditorを呼び出す
      f.input :image, as: :file # active storageを使って画像UPする際はas: :file
      f.actions
    end
  end

  show do
    attributes_table do
      row :title
      row :author
      row :content do |r|
        r.content.html_safe # html_safeでhtmlコンテンツを表示
      end
      row :image do |r|
        image_tag url_for(r.image)
      end
    end
  end

end
