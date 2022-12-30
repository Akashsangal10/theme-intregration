ActiveAdmin.register NewBusiness do

  permit_params :title, :description, :description1, :title1, :title2, :title3, :image1

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :describtion1
    column :title1
    column :title2
    column :title3
    column :image1 do |obj|
      image_tag (url_for(obj.image1) rescue "")
    end
    column :created_at
    column :updated_at
    actions
  end

  filter :title1
  filter :title2
  filter :title3
  filter :created_at

  form html: { multipart: true } do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :title1
      f.input :description1
      f.input :image1, as: :file
      f.input :title2
      f.input :title3
    end
    f.actions
  end

   show do
    attributes_table do
      row :image1 do |obj|
        image_tag url_for(obj.image1)
      end
      row :title
      row :description
      row :description1
      row :title1
      row :title2
      row :title3
    end
  end 
end
