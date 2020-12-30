# frozen_string_literal: true

describe 'the signin process', js: true do
  before :each do
    user = User.new(email: 'user@example.com', password: 'password')
    user.save
    user.confirm
  end

  it 'signs me in' do
    visit root_path
    within('form') do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'successfully'
  end
end
