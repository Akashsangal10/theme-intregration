ActiveAdmin.register Footer do

  
  permit_params :description, :address, :number
  
  form html: { multipart: true } do |f|
    f.inputs "Footer" do
      f.input :description
      f.input :address
      f.input :number
    end
    f.actions
  end


  show do
    attributes_table do
      row :description
      row :address
      row :number
    end
  end


  index do
    selectable_column
    id_column
    column :description
    column :address
    column :number
    column :created_at
    column :updated_at
    actions
  end



end
