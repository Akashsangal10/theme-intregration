ActiveAdmin.register ServiceContent do

 
  permit_params :title1, :description1, :title2, :description2, :title3, :description3, :image1, :image2, :image3, :title, :description
 
  index do
    selectable_column
    id_column
    column :title
    column :description
    column :title1
    column :describtion1
    column :image1 do |obj|
      image_tag (url_for(obj.image1) rescue "")
    end
    column :title2
    column :describtion2
    column :image2 do |obj|
      # image_tag url_for(obj.image2)
    end
    column :title3
    column :describtion3
    column :image3 do |obj|
      # image_tag url_for(obj.image3)
    end
    column :created_at
    column :updated_at
    actions
  end

  filter :title1
  filter :title2
  filter :title3
  filter :created_at

  form html: { multipart: true } do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :title1
      f.input :description1, as: :quill_editor, input_html: { data: { options: { modules: { toolbar: [['bold', 'italic','underline', 'strike'],['link', 'image'], [{ 'size': ['small', false, 'large', 'huge'] }],['blockquote', 'code-block'], [{ 'color': [] }, { 'background': [] }],[{ 'font': [] }],[{ 'align': [] }],[{ 'script': 'sub'}, { 'script': 'super' }],[{ 'direction': 'rtl' }],[{ 'header': [1, 2, 3, 4, 5, 6, false] }],] }, placeholder: 'Type something...', theme: 'snow' } } }
      f.input :image1, as: :file
      f.input :title2
      f.input :description2, as: :quill_editor
      f.input :image2, as: :file
      f.input :title3
      f.input :description3, as: :quill_editor
      f.input :image3, as: :file
    end
    f.actions
  end

   show do
    attributes_table do
      row :image1 do |obj|
        image_tag url_for(obj.image1)
      end
      row :image2 do |obj|
        image_tag url_for(obj.image2)
      end
      row :image3 do |obj|
        image_tag url_for(obj.image3)
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
