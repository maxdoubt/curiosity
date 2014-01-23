require 'test_helper'

class LessonTemplatesControllerTest < ActionController::TestCase
  setup do
    @lesson_template = lesson_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_template" do
    assert_difference('LessonTemplate.count') do
      post :create, lesson_template: { cols: @lesson_template.cols, description: @lesson_template.description, name: @lesson_template.name, rows: @lesson_template.rows }
    end

    assert_redirected_to lesson_template_path(assigns(:lesson_template))
  end

  test "should show lesson_template" do
    get :show, id: @lesson_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_template
    assert_response :success
  end

  test "should update lesson_template" do
    patch :update, id: @lesson_template, lesson_template: { cols: @lesson_template.cols, description: @lesson_template.description, name: @lesson_template.name, rows: @lesson_template.rows }
    assert_redirected_to lesson_template_path(assigns(:lesson_template))
  end

  test "should destroy lesson_template" do
    assert_difference('LessonTemplate.count', -1) do
      delete :destroy, id: @lesson_template
    end

    assert_redirected_to lesson_templates_path
  end
end
