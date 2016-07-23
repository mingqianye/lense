class LandingController < ApplicationController
  def index
    @brands = BrandsService.all_brands
  end
end
