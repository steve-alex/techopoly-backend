class PlayersController < ApplicationController
    protect_from_forgery :except => [:update, :show, :create]

    def create
        player = Player.create(player_params)
        if player.save
            render json: player
        else
            render json: {message: 'Player could not be initialized'}
        end
    end

    def show
        player = Player.find(params[:id])
        if player
            render json: PlayerSerializer.new(player).to_serialized_json
        else
            render json: {message: 'Player with this id could not be found.'}
        end 
    end

    def update
        player = Player.update(player_params)
        if player.save
            render json: player, only: [:id, :name, :money, :position, :game_id]
        else
            render json:{message: 'Player could not be updated.'}
        end
    end

    private

    def player_params
        params.require!
    end
    
end
