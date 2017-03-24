require 'test_helper'

class DiscountTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discount_type = discount_types(:one)
  end

  test "should get index" do
    get discount_types_url
    assert_response :success
  end

  test "should get new" do
    get new_discount_type_url
    assert_response :success
  end

  test "should create discount_type" do
    assert_difference('DiscountType.count') do
      post discount_types_url, params: { discount_type: { amount: @discount_type.amount, name: @discount_type.name, percentage: @discount_type.percentage } }
    end

    assert_redirected_to discount_type_url(DiscountType.last)
  end

  test "should show discount_type" do
    get discount_type_url(@discount_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_discount_type_url(@discount_type)
    assert_response :success
  end

  test "should update discount_type" do
    patch discount_type_url(@discount_type), params: { discount_type: { amount: @discount_type.amount, name: @discount_type.name, percentage: @discount_type.percentage } }
    assert_redirected_to discount_type_url(@discount_type)
  end

  test "should destroy discount_type" do
    assert_difference('DiscountType.count', -1) do
      delete discount_type_url(@discount_type)
    end

    assert_redirected_to discount_types_url
  end
end
