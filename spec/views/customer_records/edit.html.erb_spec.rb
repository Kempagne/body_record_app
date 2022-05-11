require 'rails_helper'

RSpec.describe "customer_records/edit", type: :view do
  before(:each) do
    @customer_record = assign(:customer_record, CustomerRecord.create!(
      customer_name: "MyString",
      staff_name: "MyString",
      note: "MyText"
    ))
  end

  it "renders the edit customer_record form" do
    render

    assert_select "form[action=?][method=?]", customer_record_path(@customer_record), "post" do

      assert_select "input[name=?]", "customer_record[customer_name]"

      assert_select "input[name=?]", "customer_record[staff_name]"

      assert_select "textarea[name=?]", "customer_record[note]"
    end
  end
end
