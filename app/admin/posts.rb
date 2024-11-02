ActiveAdmin.register Post, as: "Post" do
  permit_params :title, :description, :image, :created_at, :updated_at

  filter :title
  filter :created_at
  filter :updated_at

  index do 
    selectable_column 
    id_column
    column :title
    column :description
    # column :topics
    column :image do |ad|
      image_tag url_for(ad.image), width: "40", height: "40" if ad.image.attached?
    end
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Post" do 
      f.input :title, input_html: { style: "width: 500px;  height: 50px"}
      f.input :description, input_html: { style: "width: 500px; height: 150px" }
      f.input :image, as: :file
    end
    # f.input :topics
    f.actions 
  end

  show do |f|
    attributes_table do 
      row :title
      row :description
      row :image do |ad|
        image_tag url_for(ad.image), width: "100", height: "100" if ad.image.present?
      end
      row :created_at
      row :updated_at
    end
  end
end

