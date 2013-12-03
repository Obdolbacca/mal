# == Schema Information
#
# Table name: animes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  created     :datetime
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Anime < ActiveRecord::Base

  has_many :animes_anime_lists
  has_many :anime_lists, through: :animes_anime_lists
end
