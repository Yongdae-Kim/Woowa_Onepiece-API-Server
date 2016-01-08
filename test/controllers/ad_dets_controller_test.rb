require 'test_helper'

class AdDetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_det = ad_dets(:one)
  end

  test 'should get index' do
    get ad_dets_url
    assert_response :success
  end

  test 'should get new' do
    get new_ad_det_url
    assert_response :success
  end

  test 'should create ad_det' do
    assert_difference('AdDet.count') do
      post ad_dets_url, params: {
        ad_det: {
          ad_det_ct1: @ad_det.ad_det_ct1,
          ad_det_ct2: @ad_det.ad_det_ct2,
          ad_det_lat: @ad_det.ad_det_lat,
          ad_det_lng: @ad_det.ad_det_lng,
          ad_id: @ad_det.ad_id,
          ad_det_addr: @ad_det.ad_det_addr
        }
      }
    end

    assert_redirected_to ad_det_path(AdDet.last)
  end

  test 'should show ad_det' do
    get ad_det_url(@ad_det)
    assert_response :success
  end

  test 'should get edit' do
    get edit_ad_det_url(@ad_det)
    assert_response :success
  end

  test 'should update ad_det' do
    patch ad_det_url(@ad_det), params: {
      ad_det: {
        ad_det_ct1: @ad_det.ad_det_ct1,
        ad_det_ct2: @ad_det.ad_det_ct2,
        ad_det_lat: @ad_det.ad_det_lat,
        ad_det_lng: @ad_det.ad_det_lng,
        ad_id: @ad_det.ad_id,
        ad_det_addr: @ad_det.ad_det_addr
      }
    }
    assert_redirected_to ad_det_path(@ad_det)
  end

  test 'should destroy ad_det' do
    assert_difference('AdDet.count', -1) do
      delete ad_det_url(@ad_det)
    end

    assert_redirected_to ad_dets_path
  end
end
