ActiveAdmin.register MarketingSolution do


  permit_params :title, :description, :image
  

   form  do |f|
    f.inputs "MarketingSolution" do
      f.input :title
      f.input :description
      f.input :image, as: :file
    end
    f.actions
  end

 show do
    attributes_table do
      row :title
      row :description
      row :image do |ad|
        image_tag url_for(ad.image)
      end
    end
  end

   index do |f|
    selectable_column
    id_column
    column :title
    column :description
    column :image do |obj|
      image_tag (url_for(obj) rescue "")
    end
    f.actions
  end
  
end
