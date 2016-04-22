class Deck

  RANKS = %w(6 7 8 9 10 J Q K A)
  SUITS = %w(Spade Heart Club Diamond)
  MAST_COUNT = 4
  def empty?
    @deck.size == 0
  end
  def initialize ()
    @deck = []
    @count = 36
    generate
    shuffle
  end
  def generate
    val = 15 - @count/MAST_COUNT
    (@count/MAST_COUNT).times do
      mast = 0
      MAST_COUNT.times {@deck.push(Card.new(val, mast))
      mast += 1}
      val += 1
    end
  end

  def shuffle
    @deck.shuffle!
  end

  def get_last
    @deck.pop
  end

  def add current_player
    @deck.push(current_player.move)
  end

  def info
    @deck.size
  end
end