ActiveAdmin.register Inquiry do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email, :message
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :message]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params  :email, :name, :message

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :message
    column :created_at
    column :updated_at
    actions
  end

  filter :email
  filter :name
  filter :message
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :name
      f.input :message
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
