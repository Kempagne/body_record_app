require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        name: "Name",
        furigana: "Furigana",
        sex: 2,
        mail: "Mail",
        phone_number: "Phone Number",
        post: "Post",
        pref: "Pref",
        add: "Add"
      ),
      Customer.create!(
        name: "Name",
        furigana: "Furigana",
        sex: 2,
        mail: "Mail",
        phone_number: "Phone Number",
        post: "Post",
        pref: "Pref",
        add: "Add"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Furigana".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Mail".to_s, count: 2
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
    assert_select "tr>td", text: "Post".to_s, count: 2
    assert_select "tr>td", text: "Pref".to_s, count: 2
    assert_select "tr>td", text: "Add".to_s, count: 2
  end
end
