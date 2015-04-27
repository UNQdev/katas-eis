class Score
    
    attr_accessor :actual_set,
    :sets_player_one, :sets_player_two, 
    :points_player_one, :points_player_two 
    
    def initialize()
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
        @sets_player_one[actual_set] += 1
    end
    
    def game_player_two()
        @sets_player_two[actual_set] += 1
    end
    

    def begin_set_two()
        @actual_set += 1
    end
    
    
    
    def remove_adv_player_one()
        @points_player_one -= 1
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
    
    
    def print_points()
        translate_points(points_player_one) + " - " + translate_points(points_player_two)
    end
    
    def print_sets()
        sets_player_one.to_s + " - " + sets_player_two.to_s
    end
end