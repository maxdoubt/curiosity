require 'test_helper'

class StandardsControllerTest < ActionController::TestCase
  setup do
    @standard = standards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:standards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create standard" do
    assert_difference('Standard.count') do
      post :create, standard: { cluster: @standard.cluster, component: @standard.component, depth: @standard.depth, description: @standard.description, domain: @standard.domain, domain_desciption: @standard.domain_desciption, framework: @standard.framework, grade: @standard.grade, iniative: @standard.iniative, lang: @standard.lang, learning_standard_document_ref_id: @standard.learning_standard_document_ref_id, learning_standard_item_ref_id: @standard.learning_standard_item_ref_id, lft: @standard.lft, number: @standard.number, parent_id: @standard.parent_id, ref_id: @standard.ref_id, ref_uri: @standard.ref_uri, relationship_type: @standard.relationship_type, rgt: @standard.rgt, set: @standard.set, standard: @standard.standard, standardkind_id: @standard.standardkind_id, statement: @standard.statement, statement_code: @standard.statement_code, subject_id: @standard.subject_id }
    end

    assert_redirected_to standard_path(assigns(:standard))
  end

  test "should show standard" do
    get :show, id: @standard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @standard
    assert_response :success
  end

  test "should update standard" do
    patch :update, id: @standard, standard: { cluster: @standard.cluster, component: @standard.component, depth: @standard.depth, description: @standard.description, domain: @standard.domain, domain_desciption: @standard.domain_desciption, framework: @standard.framework, grade: @standard.grade, iniative: @standard.iniative, lang: @standard.lang, learning_standard_document_ref_id: @standard.learning_standard_document_ref_id, learning_standard_item_ref_id: @standard.learning_standard_item_ref_id, lft: @standard.lft, number: @standard.number, parent_id: @standard.parent_id, ref_id: @standard.ref_id, ref_uri: @standard.ref_uri, relationship_type: @standard.relationship_type, rgt: @standard.rgt, set: @standard.set, standard: @standard.standard, standardkind_id: @standard.standardkind_id, statement: @standard.statement, statement_code: @standard.statement_code, subject_id: @standard.subject_id }
    assert_redirected_to standard_path(assigns(:standard))
  end

  test "should destroy standard" do
    assert_difference('Standard.count', -1) do
      delete :destroy, id: @standard
    end

    assert_redirected_to standards_path
  end
end
