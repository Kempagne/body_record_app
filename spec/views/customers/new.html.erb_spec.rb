require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      name: "MyString",
      furigana: "MyString",
      sex: 1,
      mail: "MyString",
      phone_number: "MyString",
      post: "MyString",
      pref: "MyString",
      add: "MyString"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[name]"

      assert_select "input[name=?]", "customer[furigana]"

      assert_select "input[name=?]", "customer[sex]"

      assert_select "input[name=?]", "customer[mail]"

      assert_select "input[name=?]", "customer[phone_number]"

      assert_select "input[name=?]", "customer[post]"

      assert_select "input[name=?]", "customer[pref]"

      assert_select "input[name=?]", "customer[add]"
    end
  end
end
