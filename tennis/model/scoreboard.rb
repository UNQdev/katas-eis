class Scoreboard

    attr_accessor :actual_set,
    :sets_player_one, :sets_player_two,
    :games_player_one, :games_player_two,

    def initialize(name_one, name_two)
        @actual_set = 0
        @player_one_name = name_one
        @player_one_name = name_two
        @sets_player_one = [0,0,0]
        @sets_player_two = [0,0,0]
    end

    def point_player_one
    end

    def point_player_two
    end

    def game_player_one(new_match_state)
    end

    def game_player_two(new_match_state)
    end

    def set_player_one
    end

    def set_player_two
    end

    def playing_set_two?
    end

    def playing_set_three?
    end

    def player_one_won_a_set?
    end

    def player_two_won_a_set?
    end

    def reset_points
    end

    def print_points
    end

    def print_sets
    end
end