require 'test_helper'

class DaykindsControllerTest < ActionController::TestCase
  setup do
    @daykind = daykinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daykinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daykind" do
    assert_difference('Daykind.count') do
      post :create, daykind: { name: @daykind.name, school_id: @daykind.school_id, semester_id: @daykind.semester_id }
    end

    assert_redirected_to daykind_path(assigns(:daykind))
  end

  test "should show daykind" do
    get :show, id: @daykind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daykind
    assert_response :success
  end

  test "should update daykind" do
    patch :update, id: @daykind, daykind: { name: @daykind.name, school_id: @daykind.school_id, semester_id: @daykind.semester_id }
    assert_redirected_to daykind_path(assigns(:daykind))
  end

  test "should destroy daykind" do
    assert_difference('Daykind.count', -1) do
      delete :destroy, id: @daykind
    end

    assert_redirected_to daykinds_path
  end
end
