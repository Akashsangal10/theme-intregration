ActiveAdmin.register ServiceContent do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title1, :description1, :title2, :description2, :title3, :description3, :image1, :image2, :image3, :title, :description
  index do
    selectable_column
    id_column
    column :title
    column :description
    column :title1
    column :describtion1, as: :quill_editor
    column :image1
    column :title2
    column :describtion2, as: :quill_editor
    column :image2
    column :title3
    column :describtion3, as: :quill_editor
    column :image3 
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
      f.input :title
      f.input :description
      f.input :title1
      f.input :description1
      f.input :image1, as: :file
      f.input :title2
      f.input :description2
      f.input :image2, as: :file
      f.input :title3
      f.input :description3
      f.input :image3, as: :file
    end
    f.actions
  end
end
