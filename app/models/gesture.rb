class Gesture < ActiveRecord::Base
  belongs_to :game

  ROCK    = 0
  PAPER   = 1
  SCISSOR = 2

  GESTURE_TYPE_LABELS = {
    ROCK    => 'Rock',
    PAPER   => 'Paper',
    SCISSOR => 'Scissor'
  }


  def to_s
    GESTURE_TYPE_LABELS[self.gesture_type]
  end
end
