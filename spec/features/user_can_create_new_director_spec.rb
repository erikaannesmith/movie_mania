require 'rails_helper'

describe "user can create new director" do
  it "user visits new path" do
    visit new_director_path

    expect(current_path).to eq(new_director_path)
  end

  it "user creates new director with valid name" do
    visit new_director_path

    fill_in "director[name]", with: "Ilana Corson"

    click_on "Create Director"

    expect(current_path).to eq(director_path(Director.last))
    expect(page).to have_content("Ilana Corson")
  end
end
