class LoveLove

    def points
        '00 - 00'
    end

    def player_one_points
        0
    end

    def player_two_points
        0
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(FifteenLove.new)
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(LoveFifteen.new)
    end
end

class LoveFifteen

    def points
        '00 - 15'
    end

    def player_one_points
        0
    end

    def player_two_points
        15
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(FifteenFifteen.new)
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(LoveThirty.new)
    end
end

class LoveThirty

    def points
        '00 - 30'
    end

    def player_one_points
        0
    end

    def player_two_points
        30
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(FifteenThirty.new)
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(LoveForty.new)
    end
end

class LoveForty

    def points
        '00 - 40'
    end

    def player_one_points
        0
    end

    def player_two_points
        40
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(FifteenForty.new)
    end

    def player_two_point(scoreboard)
        scoreboard.game_player_two
    end
end

class FifteenLove

    def points
        '15 - 00'
    end

    def player_one_points
        15
    end

    def player_two_points
        0
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(ThirtyLove.new)
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(FifteenFifteen.new)
    end
end

class FifteenFifteen

    def points
        '15 - 15'
    end

    def player_one_points
        15
    end

    def player_two_points
        15
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(ThirtyFifteen.new)
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(FifteenThirty.new)
    end
end

class FifteenThirty

    def points
        '15 - 30'
    end

    def player_one_points
        15
    end

    def player_two_points
        30
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(ThirtyThirty.new)
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(FifteenForty.new)
    end
end

class FifteenForty

    def points
        '15 - 40'
    end

    def player_one_points
        15
    end

    def player_two_points
        40
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(ThirtyForty.new)
    end

    def player_two_point(scoreboard)
        scoreboard.game_player_two
    end
end

class ThirtyLove

    def points
        '30 - 00'
    end

    def player_one_points
        30
    end

    def player_two_points
        0
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(FortyLove.new)
    end

    def player_two_point(scoreboard)
        scoreboard.game_player_two
    end
end

class ThirtyFifteen

    def points
        '30 - 15'
    end

    def player_one_points
        30
    end

    def player_two_points
        15
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(FortyFifteen.new)
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(ThirtyThirty.new)
    end
end

class ThirtyThirty

    def points
        '30 - 30'
    end

    def player_one_points
        30
    end

    def player_two_points
        30
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(FortyThirty.new)
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(ThirtyForty.new)
    end
end

class ThirtyForty

    def points
        '30 - 40'
    end

    def player_one_points
        30
    end

    def player_two_points
        40
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(Deuce.new)
    end

    def player_two_point(scoreboard)
        scoreboard.game_player_two
    end
end

class FortyLove

    def points
        '40 - 00'
    end

    def player_one_points
        40
    end

    def player_two_points
        0
    end

    def player_one_point(scoreboard)
        scoreboard.game_player_one
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(FortyFifteen.new)
    end
end

class FortyFifteen

    def points
        '40 - 15'
    end

    def player_one_points
        40
    end

    def player_two_points
        15
    end

    def player_one_point(scoreboard)
        scoreboard.game_player_one
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(FortyThirty.new)
    end
end

class FortyThirty

    def points
        '40 - 30'
    end

    def player_one_points
        40
    end

    def player_two_points
        30
    end

    def player_one_point(scoreboard)
        scoreboard.game_player_one
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(Deuce.new())
    end
end

class Deuce

    def points
        '40 - 40'
    end

    def player_one_points
        40
    end

    def player_two_points
        40
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(AdvPlayerOne.new)
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(AdvPlayerTwo.new)
    end
end

class AdvPlayerOne

    def points
        'ADV - 40'
    end

    def player_one_points
        'ADV'
    end

    def player_two_points
        40
    end

    def player_one_point(scoreboard)
        scoreboard.game_player_one
    end

    def player_two_point(scoreboard)
        scoreboard.next_match_state(Deuce.new)
    end
end

class AdvPlayerTwo

    def points
        '40 - ADV'
    end

    def player_one_points
        40
    end

    def player_two_points
        'ADV'
    end

    def player_one_point(scoreboard)
        scoreboard.next_match_state(Deuce.new)
    end

    def player_two_point(scoreboard)
        scoreboard.game_player_one
    end
end

class MatchFinished

    def points
        '00 - 00'
    end

    def player_one_point(scoreboard)
        'Game finished'
    end

    def player_two_point(scoreboard)
        'Game finished'
    end
end