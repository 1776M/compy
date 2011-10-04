class CreateEntrants < ActiveRecord::Migration
  def self.up
    create_table :entrants do |t|
      t.integer :comp_id
      t.integer :user_id
      t.string :answer

      t.timestamps
    end
      add_index :entrants, [:user_id, :created_at]
      add_index :entrants, [:comp_id, :created_at]
  end

  def self.down
    drop_table :entrants
  end
end
