class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end

happy_bday = So.new(["Happy birthday to you",
           "I don't want to get sued",
           "So I'll stop right there"])
rap2 = Song.new(["Rapppppp","Rapinggggggggggg"])

happy_bday.sing_me_a_song

rap2.sing_me_a_song
