require 'rails_helper'

RSpec.describe UsersController do
  


    describe 'Get index' do
       it 'index' do
         get :index 
  #       # expect(response).to render_template "users/index"
        expect(response).to have_http_status :ok
       end
   end

  #  describe 'services' do
  #     it 'user services' do
  #       get :services 
  #       expect(response).to have_http_status 200
  #     end
  # end

  # describe '#services' do
  #   context 'services' do
  #     it 'should return services' do
  #       get "/users/services"
  #       expect(response).to have_http_status :ok
  #     end
  #     it 'should not return health story' do
  #       get "/bx_block_posts/show_stories"
  #       expect(response).to have_http_status :not_found
  #     end
  #   end
  # end




  # describe 'about' do
  #     it 'about' do
  #       get :about 
  #       expect(response).to have_http_status 200
  #     end
  # end

  # describe 'work' do
  #     it 'work' do
  #       get :work 
  #       expect(response).to have_http_status 200
  #     end
  # end

  # describe 'contact_us' do
  #     it 'contact_us' do
  #       get :contact_us 
  #       expect(response).to have_http_status 200
  #     end
  # end


end