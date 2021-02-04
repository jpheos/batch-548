class SlotMachine
  SYMBOLS = %w[joker star bell seven cherry].reverse
#   Joker 🤩 50  25 (2 jokers + anything)
# Star ⭐️ 40  20
# Bell 🛎  30  15
# Seven 7️⃣ 20  10
# Cherry 🍒  10  5

  # only for spec
  attr_writer :items
  attr_reader :score

  def initialize
    @items = ['joker', 'joker', 'joker']
    @score = 0
  end

  def play
    randomize_items
    compute_score
    display_score_in_terminal
  end

  # private

  def randomize_items
    @items = []
    3.times do
      @items << SYMBOLS.sample
    end
  end

  def compute_score
    if three_identical?
      symbol = @items.last
      index = SYMBOLS.index(symbol)
      @score = 2 * 5 * (index + 1)
    elsif two_identical_and_joker_or_two_jokers?
      symbol = @items.sort[1]
      index = SYMBOLS.index(symbol)
      @score = 5 * (index + 1)
    else
      @score = 0
    end
  end

  def three_identical?
    @items.uniq.size == 1
  end

  def two_identical_and_joker_or_two_jokers?
    @items.uniq.size == 2 && @items.include?('joker')
  end

  def display_score_in_terminal
    puts "Play"
    # sleep(1)
    puts "Vous avez tiré les items suivants:"
    puts @items.join(' / ')
    puts "Votre score: #{@score}"
  end
end

machine = SlotMachine.new
machine.play
