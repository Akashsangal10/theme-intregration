ActiveAdmin.register SocialChannel do

 
  permit_params :title, :description, :description1, :title1, :description2, :title2, :description3, :title3, :description4
  
  index do
    selectable_column
    id_column
    column :title
    column :description
    column :description1
    column :title1
    column :description2
    column :title2
    column :description3
     column :title3
    column :description4 
    column :created_at
    column :updated_at
    actions
  end

  filter :title1
  filter :title2
  filter :title3
  filter :created_at

  form do |f|
    f.inputs "SocialChannel" do
      f.input :title
      f.input :description
      f.input :description1
      f.input :title1
      f.input :description2
      f.input :title2
      f.input :description3
      f.input :title3
      f.input :description4
      # f.input :image1, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :description1
      row :title1
      row :description2
      row :title2
      row :description3
      row :title3 
      row :description4
    end
  end
  
end
