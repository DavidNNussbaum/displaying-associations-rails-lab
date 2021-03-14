class Song < ActiveRecord::Base
  belongs_to :artist

  def index
    @songs = Song.all
  end

 def show
   @song = Song.find(params[:id])
 end

 def artist_name
  self.artist.name
end

end
