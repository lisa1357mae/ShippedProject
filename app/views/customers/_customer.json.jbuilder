json.extract! customer, :id, :firstname, :lastname, :address, :email, :contact, :created_at, :updated_at
json.url customer_url(customer, format: :json)
