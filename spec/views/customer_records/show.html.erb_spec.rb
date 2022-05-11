require 'rails_helper'

RSpec.describe "customer_records/show", type: :view do
  before(:each) do
    @customer_record = assign(:customer_record, CustomerRecord.create!(
      customer_name: "Customer Name",
      staff_name: "Staff Name",
      note: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Customer Name/)
    expect(rendered).to match(/Staff Name/)
    expect(rendered).to match(/MyText/)
  end
end
