require 'test_helper'

class LessonEntrysetsControllerTest < ActionController::TestCase
  setup do
    @lesson_entryset = lesson_entrysets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_entrysets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_entryset" do
    assert_difference('LessonEntryset.count') do
      post :create, lesson_entryset: { depth: @lesson_entryset.depth, lft: @lesson_entryset.lft, name: @lesson_entryset.name, parent_id: @lesson_entryset.parent_id, rgt: @lesson_entryset.rgt }
    end

    assert_redirected_to lesson_entryset_path(assigns(:lesson_entryset))
  end

  test "should show lesson_entryset" do
    get :show, id: @lesson_entryset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_entryset
    assert_response :success
  end

  test "should update lesson_entryset" do
    patch :update, id: @lesson_entryset, lesson_entryset: { depth: @lesson_entryset.depth, lft: @lesson_entryset.lft, name: @lesson_entryset.name, parent_id: @lesson_entryset.parent_id, rgt: @lesson_entryset.rgt }
    assert_redirected_to lesson_entryset_path(assigns(:lesson_entryset))
  end

  test "should destroy lesson_entryset" do
    assert_difference('LessonEntryset.count', -1) do
      delete :destroy, id: @lesson_entryset
    end

    assert_redirected_to lesson_entrysets_path
  end
end
