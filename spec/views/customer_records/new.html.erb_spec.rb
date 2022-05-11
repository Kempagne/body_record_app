require 'rails_helper'

RSpec.describe "customer_records/new", type: :view do
  before(:each) do
    assign(:customer_record, CustomerRecord.new(
      customer_name: "MyString",
      staff_name: "MyString",
      note: "MyText"
    ))
  end

  it "renders new customer_record form" do
    render

    assert_select "form[action=?][method=?]", customer_records_path, "post" do

      assert_select "input[name=?]", "customer_record[customer_name]"

      assert_select "input[name=?]", "customer_record[staff_name]"

      assert_select "textarea[name=?]", "customer_record[note]"
    end
  end
end
