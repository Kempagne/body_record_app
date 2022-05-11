json.extract! customer, :id, :name, :furigana, :sex, :mail, :phone_number, :post, :pref, :add, :created_at, :updated_at
json.url customer_url(customer, format: :json)
