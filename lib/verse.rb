class Verse

  attr_reader :initial_bottles

  def initialize(initial_bottles)
    @initial_bottles = initial_bottles
  end

  def lines
      "#{bottle_count(initial_bottles)} #{bottle_pluarlizer(initial_bottles)} of beer on the wall,"\
      " #{bottle_count(initial_bottles)} #{bottle_pluarlizer(initial_bottles)} of beer.\n"\
      "Take one down and pass it around,"\
      " #{bottle_count(initial_bottles-1)} #{bottle_pluarlizer(initial_bottles-1)} of beer on the wall.\n"
  end

  def bottle_pluarlizer(number_of_bottles)
    number_of_bottles == 1 ? "bottle" : "bottles"
  end

  def bottle_count(number_of_bottles)
    number_of_bottles == 0 ? "no more" : number_of_bottles
  end

end
