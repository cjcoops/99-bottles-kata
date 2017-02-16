#responsible for putting together verses of the song

require_relative './verse'

class Song

  attr_reader :verse_klass

  def initialize(verse_klass: Verse)
    @verse_klass = verse_klass
  end

  def verses(initial_bottles, final_bottles = initial_bottles)
    output = ""
    for number_of_bottles in (initial_bottles).downto(final_bottles)
      output += verse(number_of_bottles) + "\n"
    end
    output.chomp
  end

  private

  def verse(number_of_bottles)
    verse_klass.new(number_of_bottles).lines
  end

end
