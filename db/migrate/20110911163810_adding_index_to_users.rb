class AddingIndexToUsers < ActiveRecord::Migration
  def self.up
  	add_index :users, :comp_id
  end

  def self.down
      remove_index :users, :comp_id
  end
end
