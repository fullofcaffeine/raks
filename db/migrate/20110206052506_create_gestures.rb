class CreateGestures < ActiveRecord::Migration
  def self.up
    create_table :gestures do |t|
      t.integer :user_type
      t.integer :gesture_type #rock, paper, scissor
      t.timestamps
    end
  end

  def self.down
    drop_table :gestures
  end
end
