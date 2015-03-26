describe "the view my listings process" do
  it "redirects me to my page with all my listings" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    listing = FactoryGirl.create(:listing)
    listing.update(:user_id => user.id)
    visit root_path
    click_on "My page"
    expect(page).to have_content listing.title

  end
end
