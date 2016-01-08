require 'test_helper'

module Api
  class BusStopsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @bus_stop = bus_stops(:one)
    end

    test 'GET #index' do
      get api_bus_stops_url, params: { format: :json }
      assert_response :success
    end

    test 'GET #show (200)' do
      get api_bus_stop_url(@bus_stop.id), params: { format: :json }
      assert_response :success
    end

    test 'GET #show (404)' do
      get api_bus_stop_url('NOT-FOUND'), params: { format: :json }
      assert_response :not_found
    end
  end
end
