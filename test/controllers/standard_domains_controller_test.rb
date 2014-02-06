require 'test_helper'

class StandardDomainsControllerTest < ActionController::TestCase
  setup do
    @standard_domain = standard_domains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:standard_domains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create standard_domain" do
    assert_difference('StandardDomain.count') do
      post :create, standard_domain: { abbrev: @standard_domain.abbrev, name: @standard_domain.name, standardkind_id: @standard_domain.standardkind_id, subject_id: @standard_domain.subject_id }
    end

    assert_redirected_to standard_domain_path(assigns(:standard_domain))
  end

  test "should show standard_domain" do
    get :show, id: @standard_domain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @standard_domain
    assert_response :success
  end

  test "should update standard_domain" do
    patch :update, id: @standard_domain, standard_domain: { abbrev: @standard_domain.abbrev, name: @standard_domain.name, standardkind_id: @standard_domain.standardkind_id, subject_id: @standard_domain.subject_id }
    assert_redirected_to standard_domain_path(assigns(:standard_domain))
  end

  test "should destroy standard_domain" do
    assert_difference('StandardDomain.count', -1) do
      delete :destroy, id: @standard_domain
    end

    assert_redirected_to standard_domains_path
  end
end
