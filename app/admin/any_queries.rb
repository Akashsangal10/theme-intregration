ActiveAdmin.register AnyQuery do


  permit_params :title, :description, :title1, :description1, :title2, :description2, :title3, :description3, :image1
  form  do  |f|
      f.inputs do
      f.input :title
      f.input :description
      f.input :title1
      f.input :description1
      f.input :title2
      f.input :description2
      f.input :title3
      f.input :description3
      f.input :image1, as: :file
    end

    f.actions
  end

   show do
    attributes_table do
      row :title
      row :description
      row :title1
      row :description1 
      row :title2
      row :description2
      row :title3
      row :description3
      row :image1 do |ad|
        image_tag url_for(ad.image1)
      end
    end
  end

   index do |f|
    selectable_column
    id_column
    column :tite
    column :description
    column :title1 
    column :description1 
    column :title2
    column :description2
    column :title3
    column :description3
    column :image1 do |obj|
      image_tag (url_for(obj.image1) rescue "")
    end  
    f.actions
  end
  
end
