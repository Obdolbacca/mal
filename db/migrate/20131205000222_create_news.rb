class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.belongs_to :author, polymorphic: true

      t.timestamps
    end
  end
end
