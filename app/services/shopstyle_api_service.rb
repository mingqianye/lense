class ShopstyleApiService
  include HTTParty
  base_uri 'http://api.shopstyle.com/api'

  def self.all_brands
    options = { query: { pid: Settings.shopstyle_pid } }
    resp = get('/v2/brands', options)
    JSON.parse(resp.body, object_class: OpenStruct).brands
  end

  def self.all_categories
    options = { query: { pid: Settings.shopstyle_pid } }
    resp = get('/v2/categories', options)
    JSON.parse(resp.body, object_class: OpenStruct).categories
  end
end
