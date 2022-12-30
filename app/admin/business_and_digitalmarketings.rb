ActiveAdmin.register BusinessAndDigitalmarketing do

  
  permit_params :title, :description, :image, :image2, :image3 
  form  do |f|
    f.inputs "BusinessAndDigitalmarketing" do
      f.input :title
      f.input :description
      # f.input :published
      f.input :image, as: :file
      f.input :image2, as: :file
      f.input :image3, as: :file
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
      row :image2 do |ad|
        image_tag url_for(ad.image2)
      end
      row :image3 do |ad|
        image_tag url_for(ad.image3)
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
    column :image2 do |obj|
      image_tag (url_for(obj.image2) rescue "")
    end
    column :image3 do |obj|
      image_tag (url_for(obj.image3) rescue "")
    end
    f.actions
  end

      

end
