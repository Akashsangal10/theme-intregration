ActiveAdmin.register BusinessCollaboration do

 
  permit_params :title, :description, :image, :image1, :image2

  form  do |f|
    f.inputs "BusinessCollaboration" do
      f.input :title
      f.input :description
      # f.input :published
      # f.input :images, as: :file, input_html: { multiple: true }
      f.input :image, as: :file
      f.input :image1, as: :file
      f.input :image2, as: :file
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
      row :image1 do |ad|
        image_tag url_for(ad.image1)
      end
      row :image2 do |ad|
        image_tag url_for(ad.image2)
      end
    end
  end

  index do |f|
    selectable_column
    id_column
    column :title
    column :description
    column :image do |obj|
      image_tag (url_for(obj.image) rescue "")
    end 
    f.actions
  end

  
end
