require 'spec_helper'

describe 'Session' do
  describe 'GET /' do
    it 'displays login link' do
      visit root_path
      page.should have_link('Login')
    end
  end
  describe 'GET /login' do
    it 'displays the login form', :js => true do
      visit root_path
      click_link('Login')
      page.should have_button('Cancel')
      page.should have_button('Start Flirting')
    end
  end

  describe 'POST /login' do
    let(:user) {User.create(email: 'bob@gmail.com', username: 'bob', password: 'a', password_confirmation: 'a')}

    it 'logs the user into the system' do
      visit root_path
      click_link('Login')
      fill_in('Email', :with => user.email)
      fill_in('Password', :with => 'a')
      click_button('Start Flirting')
      page.should_not have_button('Start Flirting')
    end

    it 'logs the user into the system if credentials ar eincorrect, :js => true' do
      visit root_path
      click_link('Login')
      fill_in('Email', :with => user.email)
      fill_in('Password', :with => 'b')
      click_button('Start Flirting')
      page.should have_button('Start Flirting')
    end

  describe 'JS cancel_form()' do
    it 'removes the login form', :js => true do
      visit root_path
      click_link('Login')
      click_button('Cancel')
      page.should_not have_button('Start Flirting')
    end