ActiveAdmin.register PeopelSay do

  
  permit_params :title, :description, :description1, :description2, :title1, :title2, :image1, :image2, :image3, :image4, :image5, :image6

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :describtion1
    column :describtion2
    column :title1
    column :title2
    column :image1 do |obj|
      image_tag (url_for(obj.image1) rescue "")
    end
    column :image2 do |obj|
      image_tag (url_for(obj.image2) rescue "")
    end
    column :image3 do |obj|
      image_tag (url_for(obj.image3) rescue "")
    end
    column :image4 do |obj|
      image_tag (url_for(obj.image4) rescue "")
    end
    column :image5 do |obj|
      image_tag (url_for(obj.image5) rescue "")
    end 
    column :image6 do |obj|
      image_tag (url_for(obj.image6) rescue "")
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
      f.input :description1
      f.input :description2
      f.input :title1
      f.input :title2
      f.input :image1, as: :file
      f.input :image2, as: :file
      f.input :image3, as: :file
      f.input :image4, as: :file
      f.input :image5, as: :file
      f.input :image6, as: :file
    end
    f.actions
  end

   show do
    attributes_table do
      row :image1 do |obj|
        image_tag url_for(obj.image1)
      end
      row :image2 do |obj|
        image_tag url_for(obj.image2)
      end
      row :image3 do |obj|
        # image_tag url_for(obj.image3)
      end
      row :image4 do |obj|
        image_tag url_for(obj.image4)
      end
      row :image5 do |obj|
        image_tag url_for(obj.image5)
      end
      row :image6 do |obj|
        image_tag url_for(obj.image6)
      end
      row :title
      row :description
      row :description1
      row :description2
      row :title1
      row :title2
    end
  end 
  
end
