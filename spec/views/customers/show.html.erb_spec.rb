require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      name: "Name",
      furigana: "Furigana",
      sex: 2,
      mail: "Mail",
      phone_number: "Phone Number",
      post: "Post",
      pref: "Pref",
      add: "Add"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Furigana/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Mail/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Post/)
    expect(rendered).to match(/Pref/)
    expect(rendered).to match(/Add/)
  end
end
