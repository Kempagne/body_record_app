class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :furigana
      t.integer :sex
      t.string :mail
      t.string :phone_number
      t.string :post
      t.string :pref
      t.string :add

      t.timestamps
    end
  end
end
