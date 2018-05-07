require 'rails_helper'

RSpec.describe "listings/new", type: :view do
  before(:each) do
    assign(:listing, Listing.new(
      :title => "MyString",
      :description => "MyText",
      :image => "MyString",
      :address => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

      assert_select "input[name=?]", "listing[title]"

      assert_select "textarea[name=?]", "listing[description]"

      assert_select "input[name=?]", "listing[image]"

      assert_select "input[name=?]", "listing[address]"

      assert_select "input[name=?]", "listing[price]"
    end
  end
end
