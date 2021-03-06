class AlterFbUser < ActiveRecord::Migration
  def up
    rename_column :fb_users, :account, :fbid
    rename_column :fb_users, :name, :json
  end

  def down
    rename_column :fb_users, :fbid, :account
    rename_column :fb_users, :json, :name
  end
end
