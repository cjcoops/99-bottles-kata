require 'verse'

describe Verse do

  it "returns the verse on initialization" do
    expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
    VERSE
    verse = Verse.new(99)
    expect(verse.lines).to eq(expected)
  end
end
