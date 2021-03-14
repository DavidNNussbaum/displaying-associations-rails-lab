class Artist < ActiveRecord::Base
    has_many :songs

    def index
        @artists = Artist.all
      end
 
     def show
       @artist = Artist.find(params[:id])
     end
 
    def song_count
      self.songs.size
    end
end
