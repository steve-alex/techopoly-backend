class GamesController < ApplicationController

    def create
        #Test this out
        game = Game.create(game_params)
        if game.save
            render json: game
        else
            render json: {message: 'Game could not be initialized'}
        end   
    end

    def show
        game = Game.find(params[:id])
        if game
            render json: GameSerializer.new(game).to_serialized_json
        else
            render json: {message: 'Could not find a game with that id. '}
        end
    end

    def update
        game = Game.new(game_params)
        if game.update(game_params)
            render json: game
        else
            render json: {message: "Cannot update the game."}
        end
    end

    private

    def game_params
        params.permit!
    end

end