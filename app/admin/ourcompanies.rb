ActiveAdmin.register Ourcompany do


  
  permit_params :title1, :title2, :title3, :description1, :description2, :description3, :image

   form html: { multipart: true } do |f|
    f.inputs "Ourcompany" do
      f.input :title1
      f.input :description1
      f.input :title2
      f.input :description2
      f.input :title3
      f.input :description3
      f.input :image, as: :file
    end
    f.actions
  end

 show do
    attributes_table do
      row :images do |obj|
        image_tag url_for(obj.image)
      end
      row :description1
      row :title1
      row :description2
      row :title2
      row :description3
      row :title3
    end
  end  

  index do |f|
    selectable_column
    id_column
    column :title1
    column :description1
    column :title2
    column :description2
    column :title3
    column :description3
    column :image do |obj|
      image_tag (url_for(obj.image) rescue "")
    end
    f.actions
  end
end
