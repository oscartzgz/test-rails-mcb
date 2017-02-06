require 'test_helper'

class HasOcupationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @has_ocupation = has_ocupations(:one)
  end

  test "should get index" do
    get has_ocupations_url
    assert_response :success
  end

  test "should get new" do
    get new_has_ocupation_url
    assert_response :success
  end

  test "should create has_ocupation" do
    assert_difference('HasOcupation.count') do
      post has_ocupations_url, params: { has_ocupation: { ocupation_id: @has_ocupation.ocupation_id, worker_id: @has_ocupation.worker_id } }
    end

    assert_redirected_to has_ocupation_url(HasOcupation.last)
  end

  test "should show has_ocupation" do
    get has_ocupation_url(@has_ocupation)
    assert_response :success
  end

  test "should get edit" do
    get edit_has_ocupation_url(@has_ocupation)
    assert_response :success
  end

  test "should update has_ocupation" do
    patch has_ocupation_url(@has_ocupation), params: { has_ocupation: { ocupation_id: @has_ocupation.ocupation_id, worker_id: @has_ocupation.worker_id } }
    assert_redirected_to has_ocupation_url(@has_ocupation)
  end

  test "should destroy has_ocupation" do
    assert_difference('HasOcupation.count', -1) do
      delete has_ocupation_url(@has_ocupation)
    end

    assert_redirected_to has_ocupations_url
  end
end
