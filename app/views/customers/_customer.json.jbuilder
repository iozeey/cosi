json.extract! customer, :id, :order, :address, :latitude, :longitude, :created_at, :updated_at
json.url customer_url(customer, format: :json)
