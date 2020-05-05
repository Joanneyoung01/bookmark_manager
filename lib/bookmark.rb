require 'pg'

class Bookmark
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['url'] }
  end
end
