require 'spec_helper'

describe GamesController do

  before do
    @game = mock_model(Game).as_new_record.as_null_object
    @gesture = mock_model(Gesture).as_new_record.as_null_object
  end

  describe 'GET games/new' do

    it 'should create a new instance of game' do
      Game.should_receive(:new).and_return(@game)
      get :new
    end
    it 'should create a new instance of gesture' do
      Gesture.should_receive(:new).and_return(@gesture)
      get :new
    end
  end

  describe 'POST games' do
    before :each do
      @params = {:game => {"user_gesture_attributes" => {"gesture_type" => 1}}}
      @game = mock_model(Game)
    end

    it 'should create a new instance of game based on the params received' do
      @game.stub!(:save).and_return(true)
      Game.should_receive(:new).with(@params[:game]).and_return(@game)
      post :create,@params
    end
    it 'should save the game' do
      @game.stub!(:save).and_return(true)
      Game.should_receive(:new).with(@params[:game]).and_return(@game)
      post :create,@params
    end

    it 'should redirect to games/show/:id if game after the game has been saved' do
      @game.stub!(:save).and_return(true)
      Game.should_receive(:new).with(@params[:game]).and_return(@game)
      post :create,@params
      response.should redirect_to(game_path(@game))
    end

  end

  describe 'GET games/show/:id' do

    it 'show find the game by the id' do
      @game = Game.make(:user_won) 
      params = {:id => @game.id.to_s}
      Game.should_receive(:find).with(@game.id.to_s).and_return(@game)
      get :show,params
    end
  end

end

 

