describe "the view a listings details process" do
  it "Shows all the listing's details when you click on the listing" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    listing = FactoryGirl.create(:listing)
    listing.update(:user_id => user.id)
    visit root_path
    click_on listing.title
    expect(page).to have_content listing.details

  end
end
