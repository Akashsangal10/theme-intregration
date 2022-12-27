ActiveAdmin.register FeatureService do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title1, :description1, :title2, :description2, :title3, :description3, :title4, :description4, :title5, :description5, :title6, :description6, :image1, :image2, :image3, :image4, :image5, :image6, :title, :description
  index do
    selectable_column
    id_column
    column :title
    column :describtion, as: :quill_editor
    column :title1
    column :describtion1, as: :quill_editor
    column :image1
    column :title2
    column :describtion2, as: :quill_editor
    column :image2
    column :title3
    column :describtion3, as: :quill_editor
    column :image3
    column :title4
    column :describtion4, as: :quill_editor
    column :image4
    column :title5
    column :describtion5, as: :quill_editor
    column :image5
    column :title6
    column :describtion6, as: :quill_editor
    column :image6
    column :created_at
    column :updated_at
    actions
  end

  filter :title1
  filter :title2
  filter :title3
  filter :title4
  filter :title5
  filter :title6
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
      f.input :title4
      f.input :description4
      f.input :image4, as: :file
      f.input :title5
      f.input :description5
      f.input :image5, as: :file
      f.input :title6
      f.input :description6
      f.input :image6, as: :file
    end
    f.actions
  end
  
end
