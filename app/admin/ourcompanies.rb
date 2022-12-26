ActiveAdmin.register Ourcompany do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title1, :title2, :title3, :description1, :description2, :description3, :image
  index do
    selectable_column
    id_column
    column :title1
    column :describtion1, as: :quill_editor
    column :title2
    column :describtion2, as: :quill_editor
    column :title3
    column :describtion3, as: :quill_editor
    column :image 
    column :created_at
    column :updated_at
    actions
  end

  filter :title1
  filter :title2
  filter :title3
  filter :created_at

  form do |f|
    f.inputs do
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
  
end
