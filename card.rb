class Card

  @@mast = ['Pika', 'Chirva', 'Buba', 'Chirva']
  def initialize (rank, name)
    @rank = rank
    @name = @@mast[name]
  end

  def equal_mast_karts? karta
    @rank == karta.rank
  end

  def to_s
    "#{@name} #{@rank}"
  end

  def rank
    @rank
  end
end