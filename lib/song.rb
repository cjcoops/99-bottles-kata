

class Song

  def initialize

  end

  def verse(number_of_bottles)
    "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.\nTake one down and pass it around, #{number_of_bottles-1} bottles of beer on the wall.\n"
  end

  def verses(initial_bottles, final_bottles = initial_bottles)
    output = ""
    for number_of_bottles in (initial_bottles).downto(final_bottles)
      output += verse(number_of_bottles) + "\n"
    end
    output.chomp
  end

end
