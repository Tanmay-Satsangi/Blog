ActiveAdmin.register Post do
  permit_params :title, :description, :created_at, :updated_at

  filter :title
  filter :created_at
  filter :updated_at

  index do 
    selectable_column 
    id_column
    column :title
    column :description
    # column :topics
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Post" do 
      f.input :title
      f.input :description
    end
    # f.input :topics
    f.actions 
  end

  show do |f|
    attributes_table do 
      row :title
      row :description
      row :created_at
    end
  end
end

