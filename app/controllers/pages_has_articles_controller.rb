class PagesHasArticlesController < ApplicationController
  # GET /pages_has_articles
  # GET /pages_has_articles.json
  def index
    @pages_has_articles = PagesHasArticle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pages_has_articles }
    end
  end

  # GET /pages_has_articles/1
  # GET /pages_has_articles/1.json
  def show
    @pages_has_article = PagesHasArticle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pages_has_article }
    end
  end

  # GET /pages_has_articles/new
  # GET /pages_has_articles/new.json
  def new
    @pages_has_article = PagesHasArticle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pages_has_article }
    end
  end

  # GET /pages_has_articles/1/edit
  def edit
    @pages_has_article = PagesHasArticle.find(params[:id])
  end

  # POST /pages_has_articles
  # POST /pages_has_articles.json
  def create
    @pages_has_article = PagesHasArticle.new(params[:pages_has_article])

    respond_to do |format|
      if @pages_has_article.save
        format.html { redirect_to @pages_has_article, notice: 'Pages has article was successfully created.' }
        format.json { render json: @pages_has_article, status: :created, location: @pages_has_article }
      else
        format.html { render action: "new" }
        format.json { render json: @pages_has_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pages_has_articles/1
  # PUT /pages_has_articles/1.json
  def update
    @pages_has_article = PagesHasArticle.find(params[:id])

    respond_to do |format|
      if @pages_has_article.update_attributes(params[:pages_has_article])
        format.html { redirect_to @pages_has_article, notice: 'Pages has article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pages_has_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages_has_articles/1
  # DELETE /pages_has_articles/1.json
  def destroy
    @pages_has_article = PagesHasArticle.find(params[:id])
    @pages_has_article.destroy

    respond_to do |format|
      format.html { redirect_to pages_has_articles_url }
      format.json { head :no_content }
    end
  end
end
