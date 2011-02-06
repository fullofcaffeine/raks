require 'machinist/active_record'

Game.blueprint {}
Gesture.blueprint {}

Gesture.blueprint(:rock) do
  gesture_type { Gesture::ROCK }
end

Gesture.blueprint(:paper) do
  gesture_type { Gesture::PAPER }
end

Gesture.blueprint(:scissor) do
  gesture_type { Gesture::SCISSOR }
end

Game.blueprint(:user_won) do
  user_gesture { Gesture.make(:rock) }
  force_cpu_choice { Gesture::SCISSOR }
end

Game.blueprint(:cpu_won) do
  user_gesture { Gesture.make(:scissor) }
  force_cpu_choice { Gesture::ROCK }
end

Game.blueprint(:draw) do
  user_gesture { Gesture.make(:rock) }
  force_cpu_choice { Gesture::ROCK }
end
