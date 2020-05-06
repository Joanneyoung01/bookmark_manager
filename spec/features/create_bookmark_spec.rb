require 'spec_helper'
require 'pg'

feature 'Create bookmark' do
  scenario 'A user can add a bookmark' do
    visit('/bookmarks/new')
    fill_in 'url', with: 'http://www.youtube.com'
    click_button('Submit')

    expect(page).to have_content("http://www.youtube.com")
  end
end