require 'rails_helper'

RSpec.describe "admin_users/show", type: :view do
  before(:each) do
    @admin_user = assign(:admin_user, AdminUser.create!(
      name: "Name",
      mail: "Mail"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Mail/)
  end
end
