require 'song'

describe Song do

  it "returns the final verse when there are no bottles left" do
    song = Song.new(0)
    final_verse = "No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall."
    expect{print(final_verse)}.to output.to_stdout
    song.sing
  end

end
