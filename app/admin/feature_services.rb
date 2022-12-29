ActiveAdmin.register FeatureService do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  permit_params :title1, :description1, :title2, :description2, :title3, :description3, :title4, :description4, :title5, :description5, :title6, :description6, :image1, :image2, :image3, :image4, :image5, :image6, :title, :description, images: []
  
  form html: { multipart: true } do |f|
    f.inputs "Publication" do
      f.input :title
      f.input :description, as: :quill_editor
      f.input :title1
      f.input :description1, as: :quill_editor
      f.input :title2
      f.input :description2, as: :quill_editor
      f.input :title3
      f.input :description3, as: :quill_editor
      f.input :title4
      f.input :description4, as: :quill_editor
      f.input :title5
      f.input :description5, as: :quill_editor
      f.input :title6
      f.input :description6, as: :quill_editor
      # f.input :published
      f.input :images, as: :file, input_html: { multiple: true }
    end

    f.actions
  end

 show do
    attributes_table do
      row :images do
        div do
          feature_service.images.each do |img|
            div do
              image_tag url_for(img), size: "200x200"
            end
          end
        end
      end

      row :description
      row :title
      row :description1
      row :title1
      row :description2
      row :title2
      row :description3
      row :title3
      row :description4
      row :title4
      row :description5
      row :title5
      row :description6
      row :title6
    end
  end
  
end
