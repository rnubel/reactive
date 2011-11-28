# Layer of abstraction that Actions, etc., can use to get a score-like
# indicator of how Self feels about an Entity without accessing the
# details of how Feeling works. Also, since more factors than just 
# Feelings may be considered, this class's job is to wrap those as well.
class Sentiment
  attr_reader :score
  def initialize(score)
    @score = score
  end

  def ==(other)
    other.score == self.score
  end
end
