class Player < ApplicationRecord
    has_many :companies
    belongs_to :game
end
