class SearchController < ApplicationController
  def search
    unless params[:query].blank?
      @results = Article.search(params[:query])
    end
  end
end
