class CreateCustomerRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_records do |t|
      t.date :date
      t.string :customer_name
      t.string :staff_name
      t.text :note

      t.timestamps
    end
  end
end
