class Listing < ApplicationRecord
    mount_uploader :image, ImageUploader
    # validates_presence_of :title, :description, :image, :address, :price
    belongs_to :user
end
