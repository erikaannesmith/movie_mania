require 'rails_helper'

describe "user can edit a movie" do
  it "user edits title" do
    director = Director.create(name: "Ilana Corson")

    movie = Movie.create(title: "Milk Money", description: "Not suitable for children", director: director)

    visit edit_movie_path(movie)

    fill_in "movie[title]", with: "Django"

    click_on "Update Movie"

    expect(current_path).to eq(movie_path(movie))
    expect(page).to have_content("Django")
  end
end
