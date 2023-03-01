FactoryBot.define do
  factory :about_company do
    tite { "MyString" }
    description { "MyString" }
    description1 { "MyString" }
    title1 { "MyString" }
    description2 { "MyString" }
    title2 { "MyString" }
    description3 { "MyString" }
    title3 { "MyString" }
    description4 { "MyString" }
    title4 { "MyString" }
    description5 { "MyString" }
    title5 { "MyString" }
    description6 { "MyString" }
    logo { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'myfiles', 'bmw.jpeg'), 'image/jpeg') }
  end
end




# include ActionDispatch::TestProcess
# FactoryBot.define do
#   factory :company, class: 'BxBlockAdmin::Company' do
#     name { 'xyz' }
#     logo { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'myfiles', 'bmw.jpeg'), 'image/jpeg') }
#   end
# end