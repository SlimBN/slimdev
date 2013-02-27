require 'test_helper'

class PagesHasArticlesControllerTest < ActionController::TestCase
  setup do
    @pages_has_article = pages_has_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages_has_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pages_has_article" do
    assert_difference('PagesHasArticle.count') do
      post :create, pages_has_article: { articles_id: @pages_has_article.articles_id, created_at: @pages_has_article.created_at, page_id: @pages_has_article.page_id, updated_at: @pages_has_article.updated_at }
    end

    assert_redirected_to pages_has_article_path(assigns(:pages_has_article))
  end

  test "should show pages_has_article" do
    get :show, id: @pages_has_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pages_has_article
    assert_response :success
  end

  test "should update pages_has_article" do
    put :update, id: @pages_has_article, pages_has_article: { articles_id: @pages_has_article.articles_id, created_at: @pages_has_article.created_at, page_id: @pages_has_article.page_id, updated_at: @pages_has_article.updated_at }
    assert_redirected_to pages_has_article_path(assigns(:pages_has_article))
  end

  test "should destroy pages_has_article" do
    assert_difference('PagesHasArticle.count', -1) do
      delete :destroy, id: @pages_has_article
    end

    assert_redirected_to pages_has_articles_path
  end
end
