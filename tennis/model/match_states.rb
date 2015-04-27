class LoveLove
    
    def point_player_one(score)
        score.point_player_one()
        new_state = FifteenLove.new
        new_state
    end
    
    def point_player_two(score)
        score.point_player_two()
        new_state = LoveFifteen.new
        new_state
    end
    
end

class FifteenLove
   
    def point_player_one(score)
        score.point_player_one()
        new_state = ThirtyLove.new
        new_state
    end
    
    def point_player_two(score)
        score.point_player_two()
        new_state = FifteenFifteen.new
        new_state
    end
    
end

class FifteenFifteen
   
    def point_player_one(score)
        score.point_player_one()
        new_state = ThirtyFifteen.new
        new_state
    end
    
    def point_player_two(score)
        score.point_player_two()
        new_state = FifteenThirty.new
        new_state
    end
    
end

class ThirtyFifteen

    def point_player_one(score)
        score.point_player_one()
        new_state = FortyFifteen.new
        new_state
    end
    
    def point_player_two(score)
        score.point_player_two()
        new_state = ThirtyThirty.new
        new_state
    end
    
end

class ThirtyThirty

    def point_player_one(score)
        score.point_player_one()
        new_state = FortyThirty.new
        new_state
    end
    
    def point_player_two(score)
        score.point_player_two()
        new_state = ThirtyForty.new
        new_state
    end
    
end

class FortyThirty

    def point_player_one(score)
        score.point_player_one()
        score.game_player_one()
        score.reset_points()
        new_state = LoveLove.new
        new_state
    end

    def point_player_two(score)
        score.point_player_two()
        new_state = Deuce.new
        new_state
    end

end

class Deuce

    def point_player_one(score)
        score.point_player_one()
        new_state = AdvPlayerOne.new
        new_state
    end

    def point_player_two(score)
        score.point_player_two()
        new_state = AdvPlayerTwo.new
        new_state
    end

end

class AdvPlayerOne

    def point_player_one(score)
        score.point_player_one()
        score.game_player_one()
        score.reset_points()
        new_state = LoveLove.new
        new_state
    end

    def point_player_two(score)
        score.remove_adv_player_one()
        new_state = Deuce.new
        new_state
    end

end

class AdvPlayerTwo

    def point_player_one(score)
        score.remove_adv_player_two()
        new_state = Deuce.new
        new_state
    end

    def point_player_two(score)
        score.point_player_two()
        score.game_player_two()
        score.reset_points()
        new_state = LoveLove.new
        new_state
    end

end

class ThirtyLove

    def point_player_one(score)
        score.point_player_one()
        new_state = FortyLove.new
        new_state
    end
    
    def point_player_two(score)
        score.point_player_two()
        new_state = ThirtyFifteen.new
        new_state
    end

end

class FortyLove

    def point_player_one(score)
        score.point_player_one()
        score.game_player_one()
        score.reset_points()
        new_state = LoveLove.new
        new_state
    end

    def point_player_two(score)
        score.point_player_two()
        new_state = FortyFifteen.new
        new_state
    end

end

class LoveFifteen
   
    def point_player_one(score)
        score.point_player_one()
        new_state = FifteenFifteen.new
        new_state
    end
    
    def point_player_two(score)
        score.point_player_two()
        new_state = LoveThirty.new
        new_state
    end
    
end

class LoveThirty

    def point_player_one(score)
        score.point_player_one()
        new_state = FifteenThirty.new
        new_state
    end
    
    def point_player_two(score)
        score.point_player_two()
        new_state = LoveForty.new
        new_state
    end

end

class LoveForty

    def point_player_one(score)
        score.point_player_one()
        new_state = FifteenForty.new
        new_state
    end
    
    def point_player_two(score)
        score.point_player_two()
        score.game_player_two()
        score.reset_points()
        new_state = LoveLove.new
        new_state
    end
    
end

class MatchFinished

    def point_player_one(score)
        "GAME FINISHED"
    end

    def point_player_two(score)
        "GAME FINISHED"
    end

end