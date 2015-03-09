module FeatureHelpers

  def login(user, password = "password")
    visit root_path
    click_on "Login", match: :first
    fill_in "Email", with: user.email
    fill_in "Password", with: password
    within('form') {click_on "Login"}
  end

end
