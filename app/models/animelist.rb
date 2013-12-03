# == Schema Information
#
# Table name: animelists
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Animelist < ActiveRecord::Base
  belongs_to :user
  has_many :animes_anime_lists
  has_many :animes, through: :animes_anime_lists
end
