require 'rails_helper'

describe "user can see new form" do
  it "new form can be seen" do
    visit "/movies/new"

    expect(page).to have_content("Create A New Movie")
    expect(page).to have_button("Create Movie")
  end
end
