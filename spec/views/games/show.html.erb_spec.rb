require 'spec_helper'


describe 'games/show.html.erb' do

  context 'User won' do
    it 'should show a header with the "You won!" text' do
      game = Game.make :user_won
      assigns[:game] = game
      render
      response.should have_tag('h1',:text => "You won!")
    end
  end

  context 'CPU won' do
    it 'should show a header with the "You lost :(" text' do
      game = Game.make :cpu_won
      assigns[:game] = game
      render
      response.should have_tag('h1',:text => 'You lost :(')
    end

  end

  context 'Draw' do
    it 'show show a header with the "Draw!" text' do
      game = Game.make :draw
      assigns[:game] = game
      render
      response.should have_tag('h1',:text => 'Draw!')
    end
  end

  it 'should show the gesture that the user chose' do
    game = Game.make :draw
    assigns[:game] = game
    render
    response.should have_tag('li',:text => 'You chose Rock')
  end

  it 'should show the gesture that the CPU chose' do
    game = Game.make :draw
    assigns[:game] = game
    render
    response.should have_tag('li',:text => 'The CPU has chosen Rock')
  end
  it 'should show a "New Game" button' do
  end

end
