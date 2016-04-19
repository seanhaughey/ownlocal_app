require 'rails_helper'

RSpec.describe "businesses/edit", type: :view do
  before(:each) do
    @business = assign(:business, Business.create!(
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

  it "renders the edit business form" do
    render

    assert_select "form[action=?][method=?]", business_path(@business), "post" do

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
