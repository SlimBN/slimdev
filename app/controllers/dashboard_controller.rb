class DashboardController < ApplicationController
  def index
  	@myarticles = current_user.articles.all
  	@myjournals = current_user.journals.all
  end
end
