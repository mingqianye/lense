class BrandsService
  def self.all_brands
    ShopstyleApiService.all_brands.first(30)
  end
end
