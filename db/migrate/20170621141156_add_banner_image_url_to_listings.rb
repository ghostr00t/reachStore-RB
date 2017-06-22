class AddBannerImageUrlToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :banner_image_url, :string
  end
end
