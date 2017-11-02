module UserInput
  def self.getInput
    File.open("input.txt", "w+")  do |f| 
      puts "Please enter six nouns"
      @nouns = gets.chomp!
      puts "Please enter two verbs"
      @verbs = gets.chomp!
      @nouns.length > 6 ? f.write(@nouns.to_s + "\n" + @verbs.to_s) :  "You didn't enter six" 
    end
  end

  def self.printInput
   
    words = []
    File.open("input.txt").readlines.each do |line|
       words << line
    end

    p words
puts "\n When I go to the arcade with my #{NOUNS.sample + "s"}
    there are lots of games to play. I spend lots of time there with
    my friends. In 'Xmen' you can be different #{NOUNS.sample + "s"}. 
    The point of the game is to #{VERBS.sample} every
    robot. You also need to save people, and then you can go to the
    next level. In 'Star Wars' you are Luke Skywalker and you try to
      destroy every #{NOUNS.sample} . In a car racing / motorcycle
    racing game you need to beat every computerized vehicle that
    you are #{VERBS.sample + "ing"} against. There are a whole
    lot of other cool games. When you play some games you win
    #{NOUNS.sample + "s"} for certain scores. Once you're done
    you can cash in your tickets to get a big #{NOUNS.sample} . You can
    save your #{NOUNS.sample + "s"} for another time. When I
    went to this arcade I didn't believe how much fun it would be.
    You might annoy your parents by asking them over and over if
    you can go back to there. So far I have had a lot of fun every
    time I've been to this great arcade!"
  end  

end