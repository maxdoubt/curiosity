require 'test_helper'

class LessonItemsControllerTest < ActionController::TestCase
  setup do
    @lesson_item = lesson_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_item" do
    assert_difference('LessonItem.count') do
      post :create, lesson_item: { content: @lesson_item.content, depth: @lesson_item.depth, lesson_id: @lesson_item.lesson_id, lesson_template_box_id: @lesson_item.lesson_template_box_id, lft: @lesson_item.lft, parent_id: @lesson_item.parent_id, rgt: @lesson_item.rgt, user_id: @lesson_item.user_id }
    end

    assert_redirected_to lesson_item_path(assigns(:lesson_item))
  end

  test "should show lesson_item" do
    get :show, id: @lesson_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_item
    assert_response :success
  end

  test "should update lesson_item" do
    patch :update, id: @lesson_item, lesson_item: { content: @lesson_item.content, depth: @lesson_item.depth, lesson_id: @lesson_item.lesson_id, lesson_template_box_id: @lesson_item.lesson_template_box_id, lft: @lesson_item.lft, parent_id: @lesson_item.parent_id, rgt: @lesson_item.rgt, user_id: @lesson_item.user_id }
    assert_redirected_to lesson_item_path(assigns(:lesson_item))
  end

  test "should destroy lesson_item" do
    assert_difference('LessonItem.count', -1) do
      delete :destroy, id: @lesson_item
    end

    assert_redirected_to lesson_items_path
  end
end
