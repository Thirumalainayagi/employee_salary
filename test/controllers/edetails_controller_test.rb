require 'test_helper'

class EdetailsControllerTest < ActionController::TestCase
  setup do
    @edetail = edetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edetail" do
    assert_difference('Edetail.count') do
      post :create, edetail: { age: @edetail.age, bpay: @edetail.bpay, ename: @edetail.ename, pf: @edetail.pf, sex: @edetail.sex }
    end

    assert_redirected_to edetail_path(assigns(:edetail))
  end

  test "should show edetail" do
    get :show, id: @edetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edetail
    assert_response :success
  end

  test "should update edetail" do
    patch :update, id: @edetail, edetail: { age: @edetail.age, bpay: @edetail.bpay, ename: @edetail.ename, pf: @edetail.pf, sex: @edetail.sex }
    assert_redirected_to edetail_path(assigns(:edetail))
  end

  test "should destroy edetail" do
    assert_difference('Edetail.count', -1) do
      delete :destroy, id: @edetail
    end

    assert_redirected_to edetails_path
  end
end
