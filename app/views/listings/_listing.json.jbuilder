json.extract! listing, :id, :title, :description, :image, :address, :price, :created_at, :updated_at
json.url listing_url(listing, format: :json)
