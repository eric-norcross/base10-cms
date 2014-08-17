class Image < ActiveRecord::Base
  default_scope order('images.id ASC')

  attr_accessible               :asset,
                                :asset_cache, 
                                :active

  belongs_to                    :imageable, polymorphic: true

  mount_uploader                :asset, ImageUploader


  validates                     :asset,
                                presence: true

  def self.default
    return ImageUploader.new
  end
end
