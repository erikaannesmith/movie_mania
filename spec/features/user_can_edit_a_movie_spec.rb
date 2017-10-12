require 'rails_helper'

describe "user can edit a movie" do
  it "user edits title" do
    movie = Movie.create(title: "Milk Money", description: "Not suitable for children")

    visit "/movies/#{movie.id}/edit"

    fill_in "movie[title]", with: "Django"

    click_on "Update Movie"

    expect(current_path).to eq("/movies/#{movie.id}")
    expect(page).to have_content("Django")
  end
end
