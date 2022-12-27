ActiveAdmin.register BusinessAndDigitalmarketing do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description,  :image2, :image3, images: []
  form html: { multipart: true } do |f|
    f.inputs "Publication" do
      f.input :title
      f.input :description
      # f.input :published
      f.input :image, as: :file, input_html: { multiple: true }
    end

    f.actions
  end

  show do
    attributes_table do
      row :images do
        div do
          business_and_digitalmarketing.images.each do |img|
            div do
              image_tag url_for(img), size: "200x200"
            end
          end
        end
      end

      row :description
      row :title
    end
  end

end
