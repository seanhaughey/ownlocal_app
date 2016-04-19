json.array!(@businesses) do |business|
  json.extract! business, :id, :uuid, :name, :address, :address2, :city, :state, :zip, :country, :phone, :website
  json.url business_url(business, format: :json)
end
