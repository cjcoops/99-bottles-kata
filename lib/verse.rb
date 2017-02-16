class Verse

  attr_reader :initial_bottles

  def initialize(initial_bottles)
    @initial_bottles = initial_bottles
  end

  def lines
      "#{initial_bottles} #{bottles(initial_bottles)} of beer on the wall,"\
      " #{initial_bottles} #{bottles(initial_bottles)} of beer.\n"\
      "Take one down and pass it around,"\
      " #{initial_bottles-1} #{bottles(initial_bottles-1)} of beer on the wall.\n"
  end

  def bottles(number_of_bottles)
    number_of_bottles == 1 ? "bottle" : "bottles"
  end

end
