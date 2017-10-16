require 'rails_helper'

describe "user can see new form" do
  it "new form can be seen" do
    director = Director.create(name: "Ilana Corson")

    visit new_director_movie_path(director)

    expect(page).to have_content("Create A New Movie")
    expect(page).to have_button("Create Movie")
  end
end
