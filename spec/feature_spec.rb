require 'song'
require 'verse'

describe "Feature tests" do

  subject(:song) { Song.new(verse_klass: Verse) }

  it "returns the words for a single verse" do
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

  it "sings multiple verses 3 to 1" do
    expected = <<-VERSE
3 bottles of beer on the wall, 3 bottles of beer.
Take one down and pass it around, 2 bottles of beer on the wall.

2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.

1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.
    VERSE
    expect(song.verses(3,1)).to eq(expected)
  end


end
