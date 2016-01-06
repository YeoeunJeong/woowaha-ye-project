require 'test_helper'

class CosmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cosm = cosms(:one)
  end

  test "should get index" do
    get cosms_url
    assert_response :success
  end

  test "should get new" do
    get new_cosm_url
    assert_response :success
  end

  test "should create cosm" do
    assert_difference('Cosm.count') do
      post cosms_url, params: { cosm: { brand_id: @cosm.brand_id, gender_id: @cosm.gender_id, name: @cosm.name, price: @cosm.price, use_id: @cosm.use_id } }
    end

    assert_redirected_to cosm_path(Cosm.last)
  end

  test "should show cosm" do
    get cosm_url(@cosm)
    assert_response :success
  end

  test "should get edit" do
    get edit_cosm_url(@cosm)
    assert_response :success
  end

  test "should update cosm" do
    patch cosm_url(@cosm), params: { cosm: { brand_id: @cosm.brand_id, gender_id: @cosm.gender_id, name: @cosm.name, price: @cosm.price, use_id: @cosm.use_id } }
    assert_redirected_to cosm_path(@cosm)
  end

  test "should destroy cosm" do
    assert_difference('Cosm.count', -1) do
      delete cosm_url(@cosm)
    end

    assert_redirected_to cosms_path
  end
end
