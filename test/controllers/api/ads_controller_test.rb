require 'test_helper'

module Api
  class AdsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @ad = ads(:one)
    end

    test 'GET #index' do
      get api_ads_url, params: { format: :json }
      assert_response :success
    end

    test 'GET #show (200)' do
      get api_ad_url(@ad.id), params: { format: :json }
      assert_response :success
    end

    test 'GET #show (404)' do
      get api_ad_url('NOT-FOUND'), params: { format: :json }
      assert_response :not_found
    end
  end
end
