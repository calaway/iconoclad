require 'rails_helper'

feature 'User logs in and logs out', js: true do
  scenario 'they are successfully logged in and out' do
    Capybara.server_host = 'localhost'
    Capybara.server_port = '61316'

    visit(root_path)
    click_button('Login')
    fill_in('email', with: ENV.fetch('AUTH0_EMAIL'))
    fill_in('password', with: ENV.fetch('AUTH0_PASSWORD'))
    click_on('submit')

    assert_selector('input[value=Logout]')
    expect(current_path).to eq('/myaccount')

    click_button('Logout')
    assert_selector('input[value=Login]')
    expect(current_path).to eq('/')
  end
end
