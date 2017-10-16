require 'rails_helper'

describe "user sees one movie" do
  it "user sees one with title and description" do
    director = Director.create(name: "Ilana Corson")
    movie = Movie.create(title: "Drop Dead Fred", description: "An imaginary friend gets SUPER WEIRD", director: director)

    visit "/movies/#{movie.id}"

    expect(page).to have_content(movie.title)
    expect(page).to have_content(movie.description)
  end
end
