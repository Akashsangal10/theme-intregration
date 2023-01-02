ActiveAdmin.register CodeAndDegin do

 
  permit_params :title, :description

  index do
    selectable_column
    id_column
    column :title
    column :describtion, as: :quill_editor
    column :created_at
    column :updated_at
    actions
  end

  filter :title
  filter :description
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
    end
    f.actions
  end
  
end
