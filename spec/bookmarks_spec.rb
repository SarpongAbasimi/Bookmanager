require './lib/bookmark'

RSpec.describe Bookmark do
  let(:bookmark) { described_class.new }
  let(:bookmark_list) { ['www.google.com','www.youtube.com','www.instagram.com']}

  describe '#list' do
    it 'shows a list of bookmarks' do
      expect(bookmark.list).to eq(bookmark_list)
    end
  end
end
