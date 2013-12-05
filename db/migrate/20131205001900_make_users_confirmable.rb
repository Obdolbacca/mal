class MakeUsersConfirmable < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.datetime :confirmed_at
      t.string :confirmation_token
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email
    end
  end
end
