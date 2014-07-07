require 'rails_helper'

describe "adding new comments", :type => :feature do
  before :each do
    @post = create(:post)
  end

  it "adds a new comment" do
    visit "/posts/1"
    fill_in "Body", :with => "test"
    click_button "Create Comment"
    expect(page).to have_content "test"
  end

  it "checks for a wrong comment" do
    visit "/posts/1"
    fill_in "Body", :with => "foobar"
    click_button "Create Comment"
    expect(page).to_not have_content "omg"
  end
end
