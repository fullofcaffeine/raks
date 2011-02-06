require 'spec_helper'


describe 'games/new.html.erb' do

  it 'renders a form to play a new game' do

    render
    response.should have_selector("form",:method => "post",:path   => games_path) do |form|
      form.should have_selector("input", :type => 'text', :name => "game[user_hand]")
      form.should have_selector("input", :type => 'submit')
    end
  end

end
