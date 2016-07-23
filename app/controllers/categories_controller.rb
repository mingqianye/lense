class CategoriesController < ApplicationController
  def index
    @categories = CategoriesService.all_categories
  end
end
