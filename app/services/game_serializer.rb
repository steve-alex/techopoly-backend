class GameSerializer

    def initialize(game_object)
        @game = game_object
    end

    def to_serialized_json
        @game.to_json(:include => {
            :players => {:except => [:created_at, :updated_at]}, 
        }, :except => [:created_at, :updated_at])
    end

end