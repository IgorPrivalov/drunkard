class Player
  def initialize (name)
    @name = name
    @deck = []
  end

  def deck_info
      puts "#{@name} #{@deck.size} "
  end

  def deck_empty?
    @deck.size == 0
  end

  def set_kart_to_deck kart
    p kart
    @deck.push(kart)
  end

  def get_top_card
    @deck.first
  end

  def move
    @deck.pop
  end

  def player_info
    puts "#{@name}: #{@deck.last}"
  end
  def get_name
    @name
  end

  def last
    @deck.last
  end

end