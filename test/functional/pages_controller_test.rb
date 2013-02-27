require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page" do
    assert_difference('Page.count') do
      post :create, page: { created_at: @page.created_at, issue_id: @page.issue_id, number: @page.number, pos10: @page.pos10, pos11: @page.pos11, pos12: @page.pos12, pos13: @page.pos13, pos14: @page.pos14, pos15: @page.pos15, pos16: @page.pos16, pos1: @page.pos1, pos2: @page.pos2, pos3: @page.pos3, pos4: @page.pos4, pos5: @page.pos5, pos6: @page.pos6, pos7: @page.pos7, pos8: @page.pos8, pos9: @page.pos9, template_id: @page.template_id, updated_at: @page.updated_at }
    end

    assert_redirected_to page_path(assigns(:page))
  end

  test "should show page" do
    get :show, id: @page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page
    assert_response :success
  end

  test "should update page" do
    put :update, id: @page, page: { created_at: @page.created_at, issue_id: @page.issue_id, number: @page.number, pos10: @page.pos10, pos11: @page.pos11, pos12: @page.pos12, pos13: @page.pos13, pos14: @page.pos14, pos15: @page.pos15, pos16: @page.pos16, pos1: @page.pos1, pos2: @page.pos2, pos3: @page.pos3, pos4: @page.pos4, pos5: @page.pos5, pos6: @page.pos6, pos7: @page.pos7, pos8: @page.pos8, pos9: @page.pos9, template_id: @page.template_id, updated_at: @page.updated_at }
    assert_redirected_to page_path(assigns(:page))
  end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete :destroy, id: @page
    end

    assert_redirected_to pages_path
  end
end
