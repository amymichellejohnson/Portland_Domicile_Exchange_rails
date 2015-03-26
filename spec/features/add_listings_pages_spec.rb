require 'rails_helper'

describe "the add a listing process" do
  it "creates a new listing" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    visit root_path
    click_on "New listing"
    fill_in "Title", :with => "My PDX place"
    fill_in "Details", :with => "A charming NW cabin"
    fill_in "Price", :with => "75"
    select "NW"
    click_on "Create Listing"
    expect(page).to have_content "successfully"
  end

end
