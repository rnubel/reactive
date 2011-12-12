# Reactive::Personality of the observer

class Reactive::Personality
  def initialize(hash)
    @attributes = hash
  end

  def [](key)
    @attributes[key]
  end
end
