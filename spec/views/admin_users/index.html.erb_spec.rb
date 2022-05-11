require 'rails_helper'

RSpec.describe "admin_users/index", type: :view do
  before(:each) do
    assign(:admin_users, [
      AdminUser.create!(
        name: "Name",
        mail: "Mail"
      ),
      AdminUser.create!(
        name: "Name",
        mail: "Mail"
      )
    ])
  end

  it "renders a list of admin_users" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Mail".to_s, count: 2
  end
end
