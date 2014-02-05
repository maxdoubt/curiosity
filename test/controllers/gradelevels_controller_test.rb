require 'test_helper'

class GradelevelsControllerTest < ActionController::TestCase
  setup do
    @gradelevel = gradelevels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gradelevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gradelevel" do
    assert_difference('Gradelevel.count') do
      post :create, gradelevel: { abbrev: @gradelevel.abbrev, name: @gradelevel.name, number: @gradelevel.number }
    end

    assert_redirected_to gradelevel_path(assigns(:gradelevel))
  end

  test "should show gradelevel" do
    get :show, id: @gradelevel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gradelevel
    assert_response :success
  end

  test "should update gradelevel" do
    patch :update, id: @gradelevel, gradelevel: { abbrev: @gradelevel.abbrev, name: @gradelevel.name, number: @gradelevel.number }
    assert_redirected_to gradelevel_path(assigns(:gradelevel))
  end

  test "should destroy gradelevel" do
    assert_difference('Gradelevel.count', -1) do
      delete :destroy, id: @gradelevel
    end

    assert_redirected_to gradelevels_path
  end
end
