class Scoreboard

    attr_accessor :actual_set, :match_state,
    :sets_player_one, :sets_player_two,
    :games_player_one, :games_player_two

    def initialize(name_one, name_two)
        @actual_set = 0
        @match_state = LoveLove.new

        @player_one_name = name_one
        @player_one_name = name_two

        @sets_player_one = [0,0,0]
        @sets_player_two = [0,0,0]
    end

    #getters
    def player_one_points
        @match_state.player_one_points
    end

    def player_two_points
        @match_state.player_two_points
    end

    def player_one_games
        @sets_player_one[@actual_set]
    end

    def player_two_games
        @sets_player_two[@actual_set]
    end

    def player_one_sets
        @sets_player_one
    end

    def player_two_sets
        @sets_player_two
    end

    #counting/setting
    def point_player_one
    end

    def point_player_two
    end

    def game_player_one
        if player_one_games < 5
            @sets_player_one[@actual_set] += 1
        else
            set_player_one
        end
    end

    def game_player_two
        if player_two_games < 5
            @sets_player_two[@actual_set] += 1
        else
            set_player_two
        end
    end

    def set_player_one
    end

    def set_player_two
    end


    #ingame evaluations
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