require 'test_helper'

module Api
  class GendersControllerTest < ActionDispatch::IntegrationTest
    test "GET #index" do
      get api_genders_url, params: {format: :json}
      assert_response :success
      # assert_includes response.cate, '여성'
    end

    test "GET #show (200)" do
      get api_genders_url(@gender.id), params: {format: :json}
      assert_response :success
    end
    
    test "GET #show (404)" do
      get api_genders_url('NOT-FOUND'), params: {format: :json}
      assert_response :not_found
    end
  end
end
