require 'test_helper'

class LessonTemplateBoxesControllerTest < ActionController::TestCase
  setup do
    @lesson_template_box = lesson_template_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_template_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_template_box" do
    assert_difference('LessonTemplateBox.count') do
      post :create, lesson_template_box: { col: @lesson_template_box.col, colspan: @lesson_template_box.colspan, lesson_entryset_id: @lesson_template_box.lesson_entryset_id, lesson_template_id: @lesson_template_box.lesson_template_id, row: @lesson_template_box.row, rowspan: @lesson_template_box.rowspan }
    end

    assert_redirected_to lesson_template_box_path(assigns(:lesson_template_box))
  end

  test "should show lesson_template_box" do
    get :show, id: @lesson_template_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_template_box
    assert_response :success
  end

  test "should update lesson_template_box" do
    patch :update, id: @lesson_template_box, lesson_template_box: { col: @lesson_template_box.col, colspan: @lesson_template_box.colspan, lesson_entryset_id: @lesson_template_box.lesson_entryset_id, lesson_template_id: @lesson_template_box.lesson_template_id, row: @lesson_template_box.row, rowspan: @lesson_template_box.rowspan }
    assert_redirected_to lesson_template_box_path(assigns(:lesson_template_box))
  end

  test "should destroy lesson_template_box" do
    assert_difference('LessonTemplateBox.count', -1) do
      delete :destroy, id: @lesson_template_box
    end

    assert_redirected_to lesson_template_boxes_path
  end
end
