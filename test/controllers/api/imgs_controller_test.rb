require 'test_helper'

module Api
  class ImgsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @img = imgs(:one)
    end

    test 'GET #index' do
      get api_imgs_url, params: { format: :json }
      assert_response :success
    end

    test 'GET #show (200)' do
      get api_img_url(@img.id), params: { format: :json }
      assert_response :success
    end

    test 'GET #show (404)' do
      get api_img_url('NOT-FOUND'), params: { format: :json }
      assert_response :not_found
    end
  end
end
