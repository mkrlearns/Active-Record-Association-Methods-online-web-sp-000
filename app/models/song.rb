class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name() genre.name end

  def drake_made_this() self.artist = Artist.where(name: "Drake").first_or_create end

end
