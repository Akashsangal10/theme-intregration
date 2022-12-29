ActiveAdmin.register Ourcompany do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title1, :title2, :title3, :description1, :description2, :description3, images: []

   form html: { multipart: true } do |f|
    f.inputs "Publication" do
      f.input :title1
      f.input :description1, as: :quill_editor
      f.input :title2
      f.input :description2, as: :quill_editor
      f.input :title3
      f.input :description3, as: :quill_editor
      # f.input :published
      f.input :images, as: :file, input_html: { multiple: true }
    end

    f.actions
  end

 show do
    attributes_table do
      row :images do
        div do
          ourcompany.images.each do |img|
            div do
              image_tag url_for(img), size: "200x200"
            end
          end
        end
      end

      row :description1
      row :title1
      row :description2
      row :title2
      row :description3
      row :title3
    end
  end
  
end
