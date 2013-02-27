class HomeController < ApplicationController
	def index
	  	@q = Article.search(params[:q])
	  	@articles = @q.result(:distinct => true)

	  	@last_news = Article.limit(5)
	end
end
