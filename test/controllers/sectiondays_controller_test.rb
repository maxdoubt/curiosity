require 'test_helper'

class SectiondaysControllerTest < ActionController::TestCase
  setup do
    @sectionday = sectiondays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sectiondays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sectionday" do
    assert_difference('Sectionday.count') do
      post :create, sectionday: { begin_time: @sectionday.begin_time, daykind_id: @sectionday.daykind_id, end_time: @sectionday.end_time }
    end

    assert_redirected_to sectionday_path(assigns(:sectionday))
  end

  test "should show sectionday" do
    get :show, id: @sectionday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sectionday
    assert_response :success
  end

  test "should update sectionday" do
    patch :update, id: @sectionday, sectionday: { begin_time: @sectionday.begin_time, daykind_id: @sectionday.daykind_id, end_time: @sectionday.end_time }
    assert_redirected_to sectionday_path(assigns(:sectionday))
  end

  test "should destroy sectionday" do
    assert_difference('Sectionday.count', -1) do
      delete :destroy, id: @sectionday
    end

    assert_redirected_to sectiondays_path
  end
end
