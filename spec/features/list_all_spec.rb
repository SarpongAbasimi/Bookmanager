RSpec.feature 'Testing' do
  scenario 'it must return Bookmark Manager' do
    visit('/')
    expect(page).to have_content('Bookmark Manager')
  end
end

RSpec.feature 'Display a list of bookmark' do
  scenario 'it shows all bookmark' do
    connection = PG.connect :dbname => 'bookmark_manager_test'

    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com')")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.youtube.com')")
    
    visit('/bookmarks')
    expect(page).to have_content('www.google.com')
    expect(page).to have_content('www.youtube.com')
  end
end