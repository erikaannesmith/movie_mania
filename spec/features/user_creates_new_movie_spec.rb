require 'rails_helper'

describe "post to movies" do
  it "can create a new movie with title and description" do
    visit "/movies/new"

    fill_in "movie[title]", with: "Dumbo"
    fill_in "movie[description]", with: "An elephant with large ears"

    click_on "Create Movie"

    expect(current_path).to eq("/movies")
    expect(page).to have_content("Dumbo")
    expect(page).to have_content("An elephant with large ears")
  end
end
