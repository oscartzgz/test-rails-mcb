require 'test_helper'

class OcupationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ocupation = ocupations(:one)
  end

  test "should get index" do
    get ocupations_url
    assert_response :success
  end

  test "should get new" do
    get new_ocupation_url
    assert_response :success
  end

  test "should create ocupation" do
    assert_difference('Ocupation.count') do
      post ocupations_url, params: { ocupation: { name: @ocupation.name } }
    end

    assert_redirected_to ocupation_url(Ocupation.last)
  end

  test "should show ocupation" do
    get ocupation_url(@ocupation)
    assert_response :success
  end

  test "should get edit" do
    get edit_ocupation_url(@ocupation)
    assert_response :success
  end

  test "should update ocupation" do
    patch ocupation_url(@ocupation), params: { ocupation: { name: @ocupation.name } }
    assert_redirected_to ocupation_url(@ocupation)
  end

  test "should destroy ocupation" do
    assert_difference('Ocupation.count', -1) do
      delete ocupation_url(@ocupation)
    end

    assert_redirected_to ocupations_url
  end
end
