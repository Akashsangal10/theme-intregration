ActiveAdmin.register Service do

  
  permit_params :title, :description, :title1, :description1, :title2, :description2, :title3, :description3, :title4, :description4, :image1
  index do
    selectable_column
    id_column
    column :title
    column :description
    column :title1
    column :description1
    column :title2
    column :description2
    column :title3
    column :description3
     column :title4
    column :description4 
    column :image1 do |obj|
      image_tag (url_for(obj.image1) rescue"")
    end
    column :created_at
    column :updated_at
    actions
  end

  filter :title1
  filter :title2
  filter :title3
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :title1
      f.input :description1
      f.input :title2
      f.input :description2
      f.input :title3
      f.input :description3
      f.input :title4
      f.input :description4
      f.input :image1, as: :file

    end
    f.actions
  end
  
end
