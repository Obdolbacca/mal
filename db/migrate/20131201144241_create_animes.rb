class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :name
      t.datetime :created
      t.text :description


      t.timestamps
    end
  end
end
