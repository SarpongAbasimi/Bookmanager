require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @book = Bookmark.new.list
    erb :bookmarks
  end

  run! if __FILE__ == $0
end