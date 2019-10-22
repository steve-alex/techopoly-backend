class PlayerSerializer

    def initialize(player_object)
        @player = player_object
    end

    def to_serialized_json
        @player.to_json(:include => {
            :companies => {:except => [:created_at, :updated_at]}
        }, :except => [:created_at, :updated_at])
    end
    
end