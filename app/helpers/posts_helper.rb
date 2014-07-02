module PostsHelper
  def asset_exists?(name_of_asset)
    Rails.application.assets.find_asset(name_of_asset)
  end
end
