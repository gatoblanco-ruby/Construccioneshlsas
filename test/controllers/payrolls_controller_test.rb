require 'test_helper'

class PayrollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payroll = payrolls(:one)
  end

  test "should get index" do
    get payrolls_url
    assert_response :success
  end

  test "should get new" do
    get new_payroll_url
    assert_response :success
  end

  test "should create payroll" do
    assert_difference('Payroll.count') do
      post payrolls_url, params: { payroll: { descripcion: @payroll.descripcion, hora: @payroll.hora } }
    end

    assert_redirected_to payroll_url(Payroll.last)
  end

  test "should show payroll" do
    get payroll_url(@payroll)
    assert_response :success
  end

  test "should get edit" do
    get edit_payroll_url(@payroll)
    assert_response :success
  end

  test "should update payroll" do
    patch payroll_url(@payroll), params: { payroll: { descripcion: @payroll.descripcion, hora: @payroll.hora } }
    assert_redirected_to payroll_url(@payroll)
  end

  test "should destroy payroll" do
    assert_difference('Payroll.count', -1) do
      delete payroll_url(@payroll)
    end

    assert_redirected_to payrolls_url
  end
end
