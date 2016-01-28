class ResultsController < ApplicationController
  def index
    @first_player = SteamWebApi::Player.new(params['steamid1'])
    @second_player = SteamWebApi::Player.new(params['steamid2'])
    @third_player = SteamWebApi::Player.new(params['steamid3'])
   

    @first_library = @first_player.owned_games(include_played_free_games: true, include_appinfo: true) if @first_player
    @first_library_names = @first_library.games.map {|game| game["name"] }.sort
    
   @second_library = @second_player.owned_games(include_played_free_games: true, include_appinfo: true) if @second_player  
   @second_library_names = @second_library.games.map {|game| game["name"]}.sort

   @third_library = @third_player.owned_games(include_played_free_games: true, include_appinfo: true) if @third_player
   @third_library_names = @third_library.games.map {|game| game["name"]}.sort


    # @this_game = @first_library.games.select {|game| game["name"] == "Dota 2"}


  # def create
  
  #   @set_player1 = 'steamid1'
  #   #@set_player2 = SteamWebApi::Player.new('steamidp2') if steamidp2
  #   #@set_player3 = SteamWebApi::Player.new('steamidp3') if steamidp3
  # end

  # def show
  # end
end
end


