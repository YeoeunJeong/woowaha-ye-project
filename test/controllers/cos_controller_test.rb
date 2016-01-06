require 'test_helper'

class CosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @co = cos(:one)
  end

  test "should get index" do
    get cos_url
    assert_response :success
  end

  test "should get new" do
    get new_co_url
    assert_response :success
  end

  test "should create co" do
    assert_difference('Co.count') do
      post cos_url, params: { co: { name: @co.name, price: @co.price } }
    end

    assert_redirected_to co_path(Co.last)
  end

  test "should show co" do
    get co_url(@co)
    assert_response :success
  end

  test "should get edit" do
    get edit_co_url(@co)
    assert_response :success
  end

  test "should update co" do
    patch co_url(@co), params: { co: { name: @co.name, price: @co.price } }
    assert_redirected_to co_path(@co)
  end

  test "should destroy co" do
    assert_difference('Co.count', -1) do
      delete co_url(@co)
    end

    assert_redirected_to cos_path
  end
end
