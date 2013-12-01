class CreateAnimelists < ActiveRecord::Migration
  def change
    create_table :animelists do |t|
      t.belongs_to :user

      t.timestamps
    end
  end
end
