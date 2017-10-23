require 'rails_helper'

describe "guest becomes user" do
  scenario "guest signs up to be a new user" do

    visit '/'
    click_on "Create Account"

    expect(current_path).to eq(new_user_path)

    fill_in "user[username]", with: "Erika"
    fill_in "user[password]", with: "1234"

    click_on "Create User"

    expect(page).to have_content("Hello, #{User.last.username}!")
    expect(page).to have_link("Log Out")

    click_on "Log Out"

    expect(current_path).to eq(root_path)
  end

  scenario "user can log in" do
    user = User.create(username: "123", password: "456")
    visit '/'

    click_on "Log In"

    expect(current_path).to eq(login_path)

    fill_in "session[username]", with: user.username
    fill_in "session[password]", with: user.password

    click_on "Log In"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Hello, #{user.username}!")
  end
end
