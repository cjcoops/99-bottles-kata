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
end
