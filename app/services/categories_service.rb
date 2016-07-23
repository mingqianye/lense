class CategoriesService
  def self.all_categories
    ShopstyleApiService.all_categories.first(30)
  end
end
