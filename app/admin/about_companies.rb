ActiveAdmin.register AboutCompany do

  
  permit_params :tite, :description, :description1, :title1, :description2, :title2, :description3, :title3, :description4, :title4, :description5, :title5, :description6, :title6, :description7, :image1, :image2, :image3, :image4
    form  do  |f|
      f.inputs do
      f.input :tite
      f.input :description
      f.input :description1
      f.input :title2
      f.input :description3
      f.input :title3
      f.input :description4
      f.input :title4
      f.input :description5
      f.input :title5 
      f.input :description6
      f.input :title6 
      f.input :description7
      f.input :image1, as: :file
      f.input :image2, as: :file
      f.input :image3, as: :file
      f.input :image4, as: :file
    end

    f.actions
  end

   show do
    attributes_table do
      row :tite
      row :description
      row :description1 
      row :title2 
      row :description3 
      row :title3
      row :description4
      row :title4
      row :description5
      row :title5 
      row :description6
      row :title6 
      row :description7
      row :image1 do |ad|
        # image_tag url_for(ad.image1)
      end
      row :image2 do |ad|
        # image_tag url_for(ad.image2)
      end
      row :image3 do |ad|
        # image_tag url_for(ad.image3)
      end
      row :image4 do |ad|
        # image_tag url_for(ad.image4)
      end
    end
  end

   index do |f|
    selectable_column
    id_column
    column :tite
    column :description
    column :description1 
    column :title2 
    column :description3 
    column :title3
    column :description4
    column :title4
    column :description5
    column :title5 
    column :description6
    column :title6 
    column :description7
    column :image1 do |obj|
      # image_tag (url_for(obj.image1) rescue "")
    end
    column :image2 do |obj|
      # image_tag (url_for(obj.image2) rescue "")
    end
    column :image3 do |obj|
      # image_tag (url_for(obj.image3) rescue "")
    end
    column :image4 do |obj|
      # image_tag (url_for(obj.image4) rescue "")
    end
    f.actions
  end
  
end
