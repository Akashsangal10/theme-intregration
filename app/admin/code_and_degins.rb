ActiveAdmin.register CodeAndDegin do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
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
