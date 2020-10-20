class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
    
  # new method goes here
  def self.find_movies_with_same_director movie_id
     movie = Movie.find(movie_id)
     Movie.where("director = ?", movie.director)
  end
end
