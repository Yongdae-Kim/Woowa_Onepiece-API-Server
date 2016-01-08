require 'test_helper'

class AdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad = ads(:one)
  end

  test 'should get index' do
    get ads_url
    assert_response :success
  end

  test 'should get new' do
    get new_ad_url
    assert_response :success
  end

  test 'should create ad' do
    assert_difference('Ad.count') do
      post ads_url, params: {
        ad: {
          ad_cd_id: @ad.ad_cd_id,
          ad_end_dt: @ad.ad_end_dt,
          ad_start_dt: @ad.ad_start_dt,
          ad_title: @ad.ad_title,
          bus_stop_id: @ad.bus_stop_id
        }
      }
    end

    assert_redirected_to ad_path(Ad.last)
  end

  test 'should show ad' do
    get ad_url(@ad)
    assert_response :success
  end

  test 'should get edit' do
    get edit_ad_url(@ad)
    assert_response :success
  end

  test 'should update ad' do
    patch ad_url(@ad), params: {
      ad: {
        ad_cd_id: @ad.ad_cd_id,
        ad_end_dt: @ad.ad_end_dt,
        ad_start_dt: @ad.ad_start_dt,
        ad_title: @ad.ad_title,
        bus_stop_id: @ad.bus_stop_id
      }
    }
    assert_redirected_to ad_path(@ad)
  end

  test 'should destroy ad' do
    assert_difference('Ad.count', -1) do
      delete ad_url(@ad)
    end

    assert_redirected_to ads_path
  end
end
