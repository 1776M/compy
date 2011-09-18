class UsersCompsJoinTable < ActiveRecord::Migration
  def self.up
      create_table :comps_users, :id => false do |t|
          t.references :comp, :user
      end
  end

  def self.down
      drop_table :comps_users
  end
end
