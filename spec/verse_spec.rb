require 'verse'

describe Verse do

  it "returns the words for a single verse" do
    expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
    VERSE
    verse = Verse.new(99)
    expect(verse.lines).to eq(expected)
  end

  it "returns the words for a single verse with 2 bottles" do
    expected = <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
    verse = Verse.new(2)
    expect(verse.lines).to eq(expected)
  end

  it "returns the words for a single verse with 1 bottle" do
    expected = <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.
    VERSE
    verse = Verse.new(1)
    expect(verse.lines).to eq(expected)
  end

  it "returns the words for a single verse with no bottles" do
    expected = <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    verse = Verse.new(0)
    expect(verse.lines).to eq(expected)
  end
  
end
