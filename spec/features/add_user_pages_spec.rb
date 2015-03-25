require 'rails_helper'

describe "the add a user process" do
  it "adds a user" do
    visit root_path
    click_on 'Sign up'
    fill_in 'Email', :with => 'derp@derp.com'
    fill_in 'Password', :with => 'derpderp'
    fill_in 'Password confirmation', :with => 'derpderp'
    click_button 'Sign up'
    expect(page).to have_content "successfully"
  end
end
