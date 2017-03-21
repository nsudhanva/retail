require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { attachment: @client.attachment, b_address: @client.b_address, code: @client.code, cst_reg_no: @client.cst_reg_no, email: @client.email, first_name: @client.first_name, last_name: @client.last_name, notes: @client.notes, opening_balance: @client.opening_balance, opening_balance_date: @client.opening_balance_date, pan: @client.pan, payment_method: @client.payment_method, phone: @client.phone, s_address: @client.s_address, tax_reg_no: @client.tax_reg_no, website: @client.website } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { attachment: @client.attachment, b_address: @client.b_address, code: @client.code, cst_reg_no: @client.cst_reg_no, email: @client.email, first_name: @client.first_name, last_name: @client.last_name, notes: @client.notes, opening_balance: @client.opening_balance, opening_balance_date: @client.opening_balance_date, pan: @client.pan, payment_method: @client.payment_method, phone: @client.phone, s_address: @client.s_address, tax_reg_no: @client.tax_reg_no, website: @client.website } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
