require 'test_helper'

class UsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @use = uses(:one)
  end

  test 'should get index' do
    get uses_url
    assert_response :success
  end

  test 'should get new' do
    get new_use_url
    assert_response :success
  end

  test 'should show use' do
    get use_url(@use)
    assert_response :success
  end

  test 'should get edit' do
    get edit_use_url(@use)
    assert_response :success
  end

  test 'should update use' do
    patch use_url(@use), params: { use: { cate: @use.cate } }
    assert_redirected_to use_path(@use)
  end

  test 'should destroy use' do
    assert_difference('Use.count', -1) do
      delete use_url(@use)
    end

    assert_redirected_to uses_path
  end
end
