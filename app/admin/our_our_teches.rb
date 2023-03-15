ActiveAdmin.register OurOurTech do

 
    permit_params :title, :title1, :title2, :title3, :title4, :image1, :image2, :image3
  
  index do
    selectable_column
    id_column
    column :title
    column :title1
    column :title2
    column :title3
    column :title4
    column :image1
    column :image2
    column :image3 
    column :created_at
    column :updated_at
    actions
  end



  form do |f|
    f.inputs "OurOurTech" do
      f.input :title
      f.input :title1
      f.input :title2
      f.input :title3
      f.input :title4
      f.input :image1, as: :file
      f.input :image2, as: :file
      f.input :image3, as: :file
    end
    f.actions
  end


   show do
    attributes_table do
      row :title
      row :title1
      row :title2
      row :title3
      row :title4
      row :image1 do |ad|
        image_tag url_for(ad.image1)
      end 

      row :image2 do |ad|
        image_tag url_for(ad.image2)
      end

      row :image3 do |ad|
        image_tag url_for(ad.image3)
      end

    end
  end
  
end
