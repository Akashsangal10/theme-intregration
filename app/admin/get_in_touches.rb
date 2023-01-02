ActiveAdmin.register GetInTouch do

 
  permit_params :title, :description, :image1

  form  do |f|
    f.inputs "GetInTouch" do
      f.input :title
      f.input :description
      f.input :image1, as: :file
    end
    f.actions
  end

 show do
    attributes_table do
      row :title
      row :description
      row :image1 do |ad|
        image_tag url_for(ad.image1)
      end
    end
  end

   index do |f|
    selectable_column
    id_column
    column :title
    column :description
    column :image1 do |obj|
      image_tag (url_for(obj.image1) rescue "")
    end
    f.actions
  end
 
end
