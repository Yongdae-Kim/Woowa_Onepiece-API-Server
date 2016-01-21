require 'test_helper'

module Api
  class AdsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @bus_stop = bus_stops(:one)
      @ad = ads(:one)
    end

    test 'GET #index (/ads)' do
      get api_ads_url, params: { format: :json }
      assert_response :success
    end

    test 'GET #index (/ads?type=:type)' do
      get api_ads_url, params: { type: '1', format: :json }
      assert_response :success
    end

    test 'GET #index (/ads?limit=:limit)' do
      get api_ads_url, params: { limit: '2', format: :json }
      assert_response :success
      assert_equal Ad.count, 2
    end

    test 'GET #index (/ads?offset=:offset)' do
      get api_ads_url, params: { offset: '1', format: :json }
      assert_response :success
    end

    test 'GET #index (/bus_stop/:bus_stop_id/ads)' do
      get api_ads_url, params: { bus_stop_id: @bus_stop.id, format: :json }
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
