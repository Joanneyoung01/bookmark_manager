require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    $bookmarks = Bookmark.all
    @bookmarks = $bookmarks
    erb :bookmarks
  end


  run! if app_file == $0
end
