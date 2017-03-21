require 'test_helper'

class VendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get vendors_url
    assert_response :success
  end

  test "should get new" do
    get new_vendor_url
    assert_response :success
  end

  test "should create vendor" do
    assert_difference('Vendor.count') do
      post vendors_url, params: { vendor: { account_no: @vendor.account_no, address: @vendor.address, code: @vendor.code, email: @vendor.email, entity: @vendor.entity, name: @vendor.name, opening_balance: @vendor.opening_balance, pan: @vendor.pan, phone: @vendor.phone, section: @vendor.section, tax_reg_date: @vendor.tax_reg_date, tax_reg_no: @vendor.tax_reg_no, tds: @vendor.tds, website: @vendor.website } }
    end

    assert_redirected_to vendor_url(Vendor.last)
  end

  test "should show vendor" do
    get vendor_url(@vendor)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendor_url(@vendor)
    assert_response :success
  end

  test "should update vendor" do
    patch vendor_url(@vendor), params: { vendor: { account_no: @vendor.account_no, address: @vendor.address, code: @vendor.code, email: @vendor.email, entity: @vendor.entity, name: @vendor.name, opening_balance: @vendor.opening_balance, pan: @vendor.pan, phone: @vendor.phone, section: @vendor.section, tax_reg_date: @vendor.tax_reg_date, tax_reg_no: @vendor.tax_reg_no, tds: @vendor.tds, website: @vendor.website } }
    assert_redirected_to vendor_url(@vendor)
  end

  test "should destroy vendor" do
    assert_difference('Vendor.count', -1) do
      delete vendor_url(@vendor)
    end

    assert_redirected_to vendors_url
  end
end
