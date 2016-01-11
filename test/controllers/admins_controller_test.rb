require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = admins(:one)
  end

  test 'should get index' do
    get admins_url
    assert_response :success
  end

  test 'should get new' do
    get new_admin_url
    assert_response :success
  end

  test 'should create admin' do
    assert_difference('Admin.count') do
      post admins_url, params: { admin:
      { id_name: @admin.id_name, password:
      @admin.password, shop_id: @admin.shop_id } }
    end

    assert_redirected_to admin_path(Admin.last)
  end

  test 'should show admin' do
    get admin_url(@admin)
    assert_response :success
  end

  test 'should get edit' do
    get edit_admin_url(@admin)
    assert_response :success
  end

  test 'should update admin' do
    patch admin_url(@admin), params: { admin:
    { id_name: @admin.id_name, password:
    @admin.password, shop_id: @admin.shop_id } }
    assert_redirected_to admin_path(@admin)
  end

  test 'should destroy admin' do
    assert_difference('Admin.count', -1) do
      delete admin_url(@admin)
    end

    assert_redirected_to admins_path
  end
end
