# Layer of abstraction that Reactive::Actions, etc., can use to get a score-like
# indicator of how Reactive::Self feels about an Entity without accessing the
# details of how Feeling works. Also, since more factors than just 
# Reactive::Feelings may be considered, this class's job is to wrap those as well.
class Reactive::Sentiment
  attr_reader :score
  def initialize(score)
    @score = score
  end

  def ==(other)
    other.score == self.score
  end
end
