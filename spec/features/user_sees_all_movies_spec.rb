require 'rails_helper'

describe "user sees index" do
  it "user sees all movies" do
    movie_1 = Movie.create(title: "Drop Dead Fred", description: "An imaginary friend gets SUPER WEIRD")
    movie_2 = Movie.create(title: "Empire Records", description: "A old guy manages a bunch of misfits")

    visit "/movies"

    expect(page).to have_content(movie_1.title)
    expect(page).to have_content(movie_1.description)
    expect(page).to have_content(movie_2.title)
    expect(page).to have_content(movie_2.description)

  end
end
