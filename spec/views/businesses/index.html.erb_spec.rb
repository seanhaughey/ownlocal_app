require 'rails_helper'

RSpec.describe "businesses/index", type: :view do
  before(:each) do
    assign(:businesses, [
      Business.create!(
        :uuid => "Uuid",
        :name => "Name",
        :address => "MyText",
        :address2 => "MyText",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :country => "Country",
        :phone => "Phone",
        :website => "MyText"
      ),
      Business.create!(
        :uuid => "Uuid",
        :name => "Name",
        :address => "MyText",
        :address2 => "MyText",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :country => "Country",
        :phone => "Phone",
        :website => "MyText"
      )
    ])
  end

  it "renders a list of businesses" do
    render
    assert_select "tr>td", :text => "Uuid".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 6
    assert_select "tr>td", :text => "MyText".to_s, :count => 6
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 6
  end
end
