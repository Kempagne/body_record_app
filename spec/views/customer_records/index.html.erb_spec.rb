require 'rails_helper'

RSpec.describe "customer_records/index", type: :view do
  before(:each) do
    assign(:customer_records, [
      CustomerRecord.create!(
        customer_name: "Customer Name",
        staff_name: "Staff Name",
        note: "MyText"
      ),
      CustomerRecord.create!(
        customer_name: "Customer Name",
        staff_name: "Staff Name",
        note: "MyText"
      )
    ])
  end

  it "renders a list of customer_records" do
    render
    assert_select "tr>td", text: "Customer Name".to_s, count: 2
    assert_select "tr>td", text: "Staff Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
