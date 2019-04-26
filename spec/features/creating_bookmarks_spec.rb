

RSpec.feature 'Adding a new bookmark' do
  scenario 'A user can add a new bookmark' do
    visit('/bookmarks/new') 
    fill_in('url', with: 'http://www.comedy.com')
    click_button('Submit')
    
    expect(page).to have_content('http://www.comedy.com')
  end
end
