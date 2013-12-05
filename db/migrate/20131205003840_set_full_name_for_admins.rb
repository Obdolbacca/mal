class SetFullNameForAdmins < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :nick
    end
  end
end
