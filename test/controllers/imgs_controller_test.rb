require 'test_helper'

class ImgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @img = imgs(:one)
  end

  test 'should get index' do
    get imgs_url
    assert_response :success
  end

  test 'should get new' do
    get new_img_url
    assert_response :success
  end

  test 'should create img' do
    assert_difference('Img.count') do
      post imgs_url, params: {
        img: {
          ad_id: @img.ad_id,
          img_path_dn: @img.img_path_dn,
          img_fname_server: @img.img_fname_server,
          img_fname_user: @img.img_fname_user,
          img_size: @img.img_size,
          img_path_up: @img.img_path_up,
          img_path_root: @img.img_path_root
        }
      }
    end

    assert_redirected_to img_path(Img.last)
  end

  test 'should show img' do
    get img_url(@img)
    assert_response :success
  end

  test 'should get edit' do
    get edit_img_url(@img)
    assert_response :success
  end

  test 'should update img' do
    patch img_url(@img), params: {
      img: {
        ad_id: @img.ad_id,
        img_path_dn: @img.img_path_dn,
        img_fname_server: @img.img_fname_server,
        img_fname_user: @img.img_fname_user,
        img_size: @img.img_size,
        img_path_up: @img.img_path_up,
        img_path_root: @img.img_path_root
      }
    }
    assert_redirected_to img_path(@img)
  end

  test 'should destroy img' do
    assert_difference('Img.count', -1) do
      delete img_url(@img)
    end

    assert_redirected_to imgs_path
  end
end
