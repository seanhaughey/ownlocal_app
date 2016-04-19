require 'rails_helper'

RSpec.describe "businesses/show", type: :view do
  before(:each) do
    @business = assign(:business, Business.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uuid/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/MyText/)
  end
end
