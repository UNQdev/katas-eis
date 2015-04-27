class Score
    
    attr_accessor :tennis_match, :actual_set,
    :sets_player_one, :sets_player_two, 
    :points_player_one, :points_player_two 
    
    def initialize()
        @tennis_match = nil
        @actual_set = 0
        @sets_player_one = [0,0,0]
        @sets_player_two = [0,0,0]
        @points_player_one = 0
        @points_player_two = 0
    end
    
    
    def point_player_one()
        @points_player_one += 1
    end
    
    def point_player_two()
        @points_player_two += 1
    end
    
    
    def game_player_one()
        if @sets_player_one[actual_set] < 6
            @sets_player_one[actual_set] += 1
        else
            set_player_one()
        end
    end
    
    def game_player_two()
        if @sets_player_two[actual_set] < 6
            @sets_player_two[actual_set] += 1
        else
            set_player_two()
        end
    end
    
    
    def set_player_one()
        if (playing_set_two? || playing_set_three?) && player_one_won_a_set?
            @tennis_match.player_one_wins()
        else
            @actual_set += 1
        end
    end

    def set_player_two()
        if (playing_set_two? || playing_set_three?) && player_two_won_a_set?
            @tennis_match.player_two_wins()
        else
            @actual_set += 1
        end
    end

    
    def playing_set_two?()
        @actual_set == 1
    end

    def playing_set_three?()
        @actual_set == 2
    end


    def player_one_won_a_set?()
        @sets_player_one.any? { |set| set == 6 }
    end

    def player_two_won_a_set?()
        @sets_player_two.any? { |set| set == 6 }
    end
    
    
    def remove_adv_player_one()
        @points_player_one -= 1
    end
    
    def remove_adv_player_two()
        @points_player_two -= 1
    end
    
    
    def translate_points(points)
        case points
        when 0
            "00"
        when 1
            "15"
        when 2
            "30"
        when 3
            "40"
        when 4
            "ADV"
        end
    end
    
    def reset_points()
        @points_player_one = 0
        @points_player_two = 0
    end
    
    def print_points()
        translate_points(points_player_one) + " - " + translate_points(points_player_two)
    end
    
    def print_sets()
        sets_player_one.to_s + " - " + sets_player_two.to_s
    end
end