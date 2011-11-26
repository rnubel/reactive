require File.expand_path('bootstrap')

# The main class which represents one "worldview". It should
# serve as the API for anything involving the observer: their
# feelings towards entities, registering events, etc.
class Self
  attr_accessor :personality
  attr_accessor :emotions

  def initialize(personality)
    @personality = personality
    @emotions = Emotions.new
  end
end
