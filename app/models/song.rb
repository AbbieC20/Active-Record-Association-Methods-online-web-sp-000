class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if !artists.name.include?("Drake")
      
    end 
  end
  
end

# if Drake is not already an artist
#   create Drake record as artist
# assign song artist to Drake