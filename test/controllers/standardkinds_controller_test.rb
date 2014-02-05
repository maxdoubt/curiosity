require 'test_helper'

class StandardkindsControllerTest < ActionController::TestCase
  setup do
    @standardkind = standardkinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:standardkinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create standardkind" do
    assert_difference('Standardkind.count') do
      post :create, standardkind: { name: @standardkind.name }
    end

    assert_redirected_to standardkind_path(assigns(:standardkind))
  end

  test "should show standardkind" do
    get :show, id: @standardkind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @standardkind
    assert_response :success
  end

  test "should update standardkind" do
    patch :update, id: @standardkind, standardkind: { name: @standardkind.name }
    assert_redirected_to standardkind_path(assigns(:standardkind))
  end

  test "should destroy standardkind" do
    assert_difference('Standardkind.count', -1) do
      delete :destroy, id: @standardkind
    end

    assert_redirected_to standardkinds_path
  end
end
