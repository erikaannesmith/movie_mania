require 'rails_helper'

describe "user sees index" do
  it "user sees all movies" do
    director = create(:director)

    movies = create_list(:movie, 2, director: director)

    visit movies_path

    expect(page).to have_content(movies[0].title)
    expect(page).to have_content(movies[0].description)
    expect(page).to have_content(movies[1].title)
    expect(page).to have_content(movies[1].description)

  end
end
