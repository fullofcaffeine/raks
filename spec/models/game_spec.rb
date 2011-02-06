require 'spec_helper.rb'

describe Game do

  it 'should accept nested attributes for user_gesture' do
    Game.instance_methods.include?("user_gesture_attributes=").should == true
  end

  it 'should call #play after_create' do
    game = Game.new
    game.should_receive(:play)
    game.save
  end

  #Play basically chooses a gesture for the CPU
  describe '#play' do

    it 'should select a gesture for the CPU, randomly, from 0..2' do
      game = Game.new
      random = rand(3)
      game.should_receive(:rand).with(3).and_return(random)
      cpu_gesture = mock_model(Gesture).as_null_object
      game.stub!(:build_cpu_gesture).and_return(cpu_gesture)
      game.send(:play)
    end

  end
  #This method applies the rock-paper-scissors rules to the data we have in the game:
  #- user_gesture
  #- cpu_gesture
  #And returns a string that tells who won
  describe '#result' do

    context 'User won' do
      it 'should return "You won!"' do
        game = Game.make :user_won
        result = game.result
        result.should == 'You won!'
      end
    end

    context 'CPU won' do
      it 'should return "You lost :("' do
        game = Game.make :cpu_won
        game.result.should == 'You lost :('
      end
    end

    context 'Draw' do
      it 'should return "Draw!"' do
        game = Game.make :draw
        game.result.should == 'Draw!'
      end
    end
  end


  it 'should show the result for the game' do
    game = Game.make :user_won
    game.result.should == 'You won!'
  end

  describe '#to_s' do
    it 'should call result' do
      game = Game.make :user_won
      game.should_receive(:result)
      game.to_s 
    end
  end


end

