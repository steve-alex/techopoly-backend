class PlayersController < ApplicationController
    protect_from_forgery :except => [:update, :show, :create]

    # def funding_round
    #     player = Player.find(params[:id])
    #     byebug
    #     if player
    #         player.update(player.companies )
    #         render json: PlayerSerializer.new(player).to_serialized_json
    #     else
    #         render json:{message: 'Player could not be updated.'}
    #     end
    # end

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
        player = Player.find(params[:id])
        
        if player
            player.update(money: params[:player][:money])
            render json: PlayerSerializer.new(player).to_serialized_json
        else
            render json:{message: 'Player could not be updated.'}
        end
    end

    def give_up
        reset = %x( echo 'rake db:reset')
        reset = %x[ #{cmd} ]
    end


    private

    def player_params
        params.require!
    end
    
end
