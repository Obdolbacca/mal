# == Schema Information
#
# Table name: animes_anime_lists
#
#  id            :integer          not null, primary key
#  anime_id      :integer
#  anime_list_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class AnimesAnimeLists < ActiveRecord::Base
end
