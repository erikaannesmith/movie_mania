require 'rails_helper'

describe "user can create new director" do
  it "user visits new path" do
    visit "/directors/new"

    expect(current_path).to eq("/directors/new")
  end

  it "user creates new director with valid name" do
    visit "/directors/new"

    fill_in "director[name]", with: "Ilana Corson"

    click_on "Create Director"

    expect(current_path).to eq("/directors/#{Director.last.id}")
    expect(page).to have_content("Ilana Corson")
  end
end
