require './lib/bookmark'

RSpec.describe Bookmark do
  let(:bookmark) { described_class.new }
  let(:bookmark_list) { ['www.google.com','www.youtube.com']}

  describe '#all' do
    it 'shows a list of bookmarks' do
      connection = PG.connect :dbname => 'bookmark_manager_test'

      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com')")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.youtube.com')")
 
      expect(described_class.all).to eq(bookmark_list)
    end
  end
end

