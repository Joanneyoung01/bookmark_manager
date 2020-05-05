require 'spec_helper'
require './lib/bookmark_manager_log'

describe BookmarkManagerLog do
  it "returns a list of bookmarks" do
    expect(subject).to respond_to(:bookmark_list)
  end

  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
  
      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
    end
  end
end
