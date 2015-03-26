require 'rails_helper'

describe "the add a photo process" do
  it "uploads a new photo" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    listing = FactoryGirl.create(:listing)
    listing.update(:user_id => user.id)
    visit root_path
    click_on "My page"
    click_on "Add photo"
    page.attach_file('photo[image]', '/Users/Guest/Downloads/controller.jpg')
    click_on "Upload"
    expect(page).to have_content "added"
  end
end
