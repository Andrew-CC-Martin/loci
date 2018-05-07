require 'rails_helper'

RSpec.describe "listings/index", type: :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
        :title => "Title",
        :description => "MyText",
        :image => "Image",
        :address => "Address",
        :price => "9.99"
      ),
      Listing.create!(
        :title => "Title",
        :description => "MyText",
        :image => "Image",
        :address => "Address",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
