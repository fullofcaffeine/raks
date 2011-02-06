class Game < ActiveRecord::Base

  belongs_to :user_gesture, :class_name => 'Gesture'
  belongs_to :cpu_gesture,  :class_name => 'Gesture',:autosave => true
  cattr_accessor :force_cpu_choice
  accepts_nested_attributes_for :user_gesture
  after_validation :play
  
  def result
    matrix = {
      0 => {
        0 => nil,
        1 => false,
        2 => true
    },
      1 => {
        0 => true,
        1 => nil,
        2 => false
    },
      2 => {
       0 => false,
       1 => true,
       2 => nil
    }
    }

    legend = {
      true => 'You won!',
      false => 'You lost :(',
      nil => 'Draw!'
    }
    debugger
    legend[matrix[self.user_gesture.gesture_type][self.cpu_gesture.gesture_type]]
  end

  def to_s
    result
  end

  private

  def play
    gesture_type = rand(3)
    self.cpu_gesture = self.build_cpu_gesture(:gesture_type => (self.force_cpu_choice || gesture_type)) 
  end

end

