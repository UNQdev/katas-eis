require_relative '../model/score.rb'
require_relative '../model/match_states.rb'

class Tennis
    
    attr_accessor :player_one, :player_two, :score, :match_state
    
    def initialize(name_player_one, name_player_two)
        @player_one = name_player_one
        @player_two = name_player_two
        
        @score = Score.new()
        @match_state = MatchBegin.new()
    end
    
    
    def print_score()
        @score.print_score(@player_one, @player_two)
    end
    
    def point_player_one()
        @match_state = @match_state.point_player_one(@score)
        puts "POINT PLAYER " + @player_one + " | " + @score.print_points()
    end
    
    def point_player_two()
        @match_state = @match_state.point_player_two(@score)
        puts "POINT PLAYER " + @player_two + " | " + @score.print_points()
    end
    
end