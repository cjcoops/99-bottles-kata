class Song

  def initialize

  end

  def verse(number_of_bottles)
    "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.\nTake one down and pass it around, #{number_of_bottles-1} bottles of beer on the wall.\n"
  end

  def verses(initial_bottles, final_bottles)
    verse(initial_bottles) + "\n" + verse(final_bottles)
  end

end
