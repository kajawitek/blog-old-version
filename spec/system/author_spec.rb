require 'rails_helper'
# frozen_string_literal: true
describe 'Author spec' do
  let!(:author) { build(:author) }

  it 'registers and logs in and logs out' do
    visit root_path
    click_link 'Register'
    fill_in 'author[first_name]', with: author.first_name
    fill_in 'author[last_name]', with: author.last_name
    fill_in 'author[email]', with: author.email
    fill_in 'author[password]', with: author.password
    fill_in 'author[password_confirmation]', with: author.password
    click_button 'Sign up'
    expect(page).to have_content 'You have signed up successfully.'

    click_button 'Sign Out'
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
    fill_in 'author[email]', with: author.email
    fill_in 'author[password]', with: author.password
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end
end
