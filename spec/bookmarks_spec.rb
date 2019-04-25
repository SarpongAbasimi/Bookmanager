require './lib/bookmark'
require_relative './setup_test_database'

RSpec.describe Bookmark do
  let(:bookmark) { described_class.new }
  let(:bookmark_list) { ['www.google.com','www.youtube.com'] }

  describe '#all' do
    it 'shows a list of bookmarks' do
      DbTestEnvSetUp.populating_database
      expect(described_class.all).to eq(bookmark_list)
    end
  end
end

