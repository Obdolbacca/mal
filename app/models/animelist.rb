class Animelist < ActiveRecord::Base
  belongs_to :user
  has_many :animes_anime_lists
  has_many :animes, through: :animes_anime_lists
end
