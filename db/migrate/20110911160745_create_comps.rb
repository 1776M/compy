class CreateComps < ActiveRecord::Migration
  def self.up
    create_table :comps do |t|
      t.string :prize
      t.string :answer_one
      t.string :answer_two
      t.string :answer_three
      t.string :answer
      t.string :question
      t.integer :user_id

      t.timestamps
    end
    add_index :comps, :user_id
    add_index :comps, :created_at
  end

  def self.down
    drop_table :comps
  end
end
