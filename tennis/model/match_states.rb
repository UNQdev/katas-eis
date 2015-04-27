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
        score.remove_adv_player_one()
        new_state = Deuce.new
        new_state
    end

end
