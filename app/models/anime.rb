class Anime < ActiveRecord::Base

  has_many :animes_anime_lists
  has_many :anime_lists, through: :animes_anime_lists
end
