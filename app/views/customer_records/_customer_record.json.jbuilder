json.extract! customer_record, :id, :date, :customer_name, :staff_name, :note, :created_at, :updated_at
json.url customer_record_url(customer_record, format: :json)
