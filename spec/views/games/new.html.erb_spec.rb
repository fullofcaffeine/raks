require 'spec_helper'


describe 'games/new.html.erb' do

  it 'renders a form to play a new game' do
    assigns[:game] = Game.new
    assigns[:gesture] = Gesture.new 
    render
    response.should have_tag("form", :action => games_path, :method => 'post') do |form|
      form.should have_tag("select[name='game[user_gesture_attributes][gesture_type]']")
      form.should have_tag("input[type='submit']", :value => 'Play')
    end
  end
end

