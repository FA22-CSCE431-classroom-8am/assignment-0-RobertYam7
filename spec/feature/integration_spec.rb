# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'To Kill a Mockingbird'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('To Kill a Mockingbird')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'Harper Lee'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harper Lee')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: '7'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('7')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Date', with: '9-13-2022'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('9-13-2022')
  end
end