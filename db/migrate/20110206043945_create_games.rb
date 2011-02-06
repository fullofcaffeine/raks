class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :user_gesture_id
      t.integer :cpu_gesture_id
      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
