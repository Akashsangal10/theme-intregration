ActiveAdmin.register BusinessCollaboration do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :title, :description, :image
  
  index do
    selectable_column
    id_column
    column :title
    column :describtion, as: :quill_editor
    # column "Image" do |business_collaboration|
    #   if business_collaboration.image.present?
    #     image_tag(business_collaboration.image, size: 50)
    #   end
    # end 
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
      f.input :image, as: :file
    end
    f.actions
  end
  
end
