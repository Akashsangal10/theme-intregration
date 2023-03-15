ActiveAdmin.register NewBusiness do

  permit_params :title, :description, :description1, :title1, :title2, :title3, :image1, :description2, :description3, :description4

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :describtion1
    column :description2
    column :description3
    column :description4
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
      f.input :title1, as: :quill_editor
      f.input :description1, as: :quill_editor
      f.input :image1, as: :file
      f.input :title2, as: :quill_editor
      f.input :title3, as: :quill_editor
      f.input :description2, as: :quill_editor
      f.input :description3, as: :quill_editor
      f.input :description4, as: :quill_editor
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
      row :description2
      row :description3
      row :description4
    end
  end 
end
