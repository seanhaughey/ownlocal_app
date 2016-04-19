require 'rails_helper'

RSpec.describe "businesses/new", type: :view do
  before(:each) do
    assign(:business, Business.new(
      :uuid => "MyString",
      :name => "MyString",
      :address => "MyText",
      :address2 => "MyText",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :country => "MyString",
      :phone => "MyString",
      :website => "MyText"
    ))
  end

  it "renders new business form" do
    render

    assert_select "form[action=?][method=?]", businesses_path, "post" do

      assert_select "input#business_uuid[name=?]", "business[uuid]"

      assert_select "input#business_name[name=?]", "business[name]"

      assert_select "textarea#business_address[name=?]", "business[address]"

      assert_select "textarea#business_address2[name=?]", "business[address2]"

      assert_select "input#business_city[name=?]", "business[city]"

      assert_select "input#business_state[name=?]", "business[state]"

      assert_select "input#business_zip[name=?]", "business[zip]"

      assert_select "input#business_country[name=?]", "business[country]"

      assert_select "input#business_phone[name=?]", "business[phone]"

      assert_select "textarea#business_website[name=?]", "business[website]"
    end
  end
end
