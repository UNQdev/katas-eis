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