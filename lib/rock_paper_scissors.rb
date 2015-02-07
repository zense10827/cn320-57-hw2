class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    if (player2[1]!="R" and  player2[1]!="S" and player2[1]!="P") or (player1[1]!="R" and  player1[1]!="S" and player1[1]!="P")
      raise NoSuchStrategyError, "Strategy must be one of R,P,S", caller
    end
    if player1[1]==player2[1]
      return player1
    end
    if player1[1]=="R"
      if player2[1]=="S"
        return player1
      else
        return player2
      end
    end
    if player1[1]=="S"
      if player2[1]=="R"
        return player2
      else
        return player1
      end
    end
    if player1[1]=="P"
      if player2[1]=="R"
        return player1
      else
        return player2
      end
    end
    # YOUR CODE HERE
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a? String
      return winner(tournament[0],tournament[1])
    end
    win1=tournament_winner(tournament[0])
    win2=tournament_winner(tournament[1])
    w=winner(win1,win2)
    return w
    # YOUR CODE HERE
  end

end
