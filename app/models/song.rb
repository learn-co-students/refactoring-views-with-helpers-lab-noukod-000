class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    new_artist=Artist.find_or_create_by(name: name)
    self.artist = new_artist
  end
end
