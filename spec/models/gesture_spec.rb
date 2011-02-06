require 'spec_helper'

describe Gesture do

  it 'should belong to a game' do
    gesture = Gesture.new
    lambda { gesture.game }.should_not raise_error
  end

  describe '#to_s' do

    it 'should show the name of the gesture' do
      gesture = Gesture.make :rock
      gesture.to_s.should == 'Rock'
    end
  end


end
