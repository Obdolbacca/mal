class Animelist < ActiveRecord::Base
  has_many :animes, through: :animes_anime_lists
end
