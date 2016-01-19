require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop = shops(:one)
  end

  test 'should get index' do
    get shops_url
    assert_response :success
  end

  test 'should get new' do
    get new_shop_url
    assert_response :success
  end

  test 'should create shop' do
    assert_difference('Shop.count') do
      post shops_url, params: { shop:
      { addr: @shop.addr, brand_id: @shop.brand_id, lat:
      @shop.lat, lng: @shop.lng, name: @shop.name, region_id:
      @shop.region_id } }
    end

    assert_redirected_to shop_path(Shop.last)
  end

  test 'should show shop' do
    get shop_url(@shop)
    assert_response :success
  end

  test 'should get edit' do
    get edit_shop_url(@shop)
    assert_response :success
  end

  test 'should update shop' do
    patch shop_url(@shop), params: { shop:
    { addr: @shop.addr, brand_id: @shop.brand_id, lat: @shop.lat, lng:
    @shop.lng, name: @shop.name, region_id: @shop.region_id } }
    assert_redirected_to shop_path(@shop)
  end

  test 'should destroy shop' do
    assert_difference('Shop.count', -1) do
      delete shop_url(@shop)
    end

    assert_redirected_to shops_path
  end
end
