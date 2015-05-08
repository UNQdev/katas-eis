require_relative '../model/score.rb'
require_relative '../model/match_states.rb'

class Tennis

    attr_accessor :player_one, :player_two, :score, :match_state

    def initialize(name_player_one, name_player_two)
        @player_one = name_player_one
        @player_two = name_player_two

        @score = Score.new()
        @score.tennis_match = self
        @match_state = LoveLove.new()
    end

    def print_points()
        @score.print_points()
    end
    
    def print_sets()
        @score.print_sets()
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
    
    
    def player_one_wins()
        @match_state = MatchFinished.new
        @player_one.to_s + " WINS!"
    end

    def player_two_wins()
        @match_state = MatchFinished.new
        @player_two.to_s + " WINS!"
    end

end