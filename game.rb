class Game
  def initialize (name)
    @player = Player.new(name)
    @comp = Player.new("Computer")
    @deck = Deck.new
    @temp_deck = []
  end

  def get_deck_player
    while !@deck.empty?
      @player.set_kart_to_deck @deck.pop
      @comp.set_kart_to_deck @deck.pop
    end
  end

  def play
    give_karts
    while !@player.deck_empty? || !@comp.deck_empty?
      step @comp
      @comp.player_info
      step @player
      @player.player_info
      puts @deck.info
    end
    if @player.deck_empty?
      puts "#{@comp.get_name} won"
    else puts "#{@player.get_name} won"
    end
  end


  private
  def give_karts
    while !@deck.empty?
      @player.set_kart_to_deck(@deck.get_last)
      @comp.set_kart_to_deck(@deck.get_last)
    end
  end

  def step current_player
    kart = @deck.get_last
    if !@deck.empty? && current_player.move.equal_mast_karts?(karta)
      current_player.set_kart_to_deck(@deck)
    end
    @deck.add(current_player)
  end

  def show_info

  end


  def key_press
    puts 'Press ENTER key'
    gets
  end
end