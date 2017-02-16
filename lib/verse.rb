class Verse

  attr_reader :initial_bottles

  def initialize(initial_bottles)
    @initial_bottles = initial_bottles
  end

  def lines
      "#{initial_bottles} bottles of beer on the wall, #{initial_bottles} bottles of beer.\nTake one down and pass it around, #{initial_bottles-1} bottles of beer on the wall.\n"
  end

end
