require 'song'

describe Song do

  subject(:song) { described_class.new }

  xit "returns the final verse when there are no bottles left" do
    expected = <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    expect(song.verse(0)).to eq(expected)
  end

  it "returns the verse for 99 bottles" do
    expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
    VERSE
    expect(song.verse(99)).to eq(expected)
  end

  it "returns the verse for 98 bottles" do
    expected = <<-VERSE
98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.
    VERSE
    expect(song.verse(98)).to eq(expected)
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
