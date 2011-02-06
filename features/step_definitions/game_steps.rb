When /^the CPU chooses "([^"]*)"$/ do |gesture|
  Game.force_cpu_choice = eval("Gesture::#{gesture.upcase}")
end

