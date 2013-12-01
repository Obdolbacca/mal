class CreateAnimesAnimeLists < ActiveRecord::Migration
  def change
    create_table :animes_anime_lists do |t|
      t.belongs_to :anime
      t.belongs_to :anime_list

      t.timestamps
    end
  end
end
