require 'song'
require 'verse'

describe "Feature tests" do

  subject(:song) { Song.new(verse_klass: Verse) }

  it "returns the verse for 98 bottles" do
    expected = <<-VERSE
98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.
    VERSE
    expect(song.verses(98)).to eq(expected)
  end

  it "sings 2 consecutive verses" do
    expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.

98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.
    VERSE
    expect(song.verses(99,98)).to eq(expected)
  end

  it "sings multiple verses" do
    expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.

98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.

97 bottles of beer on the wall, 97 bottles of beer.
Take one down and pass it around, 96 bottles of beer on the wall.
    VERSE
    expect(song.verses(99,97)).to eq(expected)
  end




end
