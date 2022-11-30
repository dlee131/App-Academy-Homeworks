class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
    take_turn
    end
    if @game_over
      game_over_message
      reset_game
    end
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence

  end

  def add_random_color
    @seq << COLORS.shuffle[0]
  end

  def round_success_message
    "Success!"
  end

  def game_over_message
    "Game Over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
