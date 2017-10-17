require 'rails_helper'

describe "user sees one movie" do
  it "user sees one with title and description" do
    director = create(:director)
    movie = create(:movie, director: director)

    visit movie_path(movie)

    expect(page).to have_content(movie.title)
    expect(page).to have_content(movie.description)
  end
end
