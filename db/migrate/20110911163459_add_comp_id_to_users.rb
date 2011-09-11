class AddCompIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :comp_id, :integer
  end

  def self.down
    remove_column :users, :comp_id
  end
end
