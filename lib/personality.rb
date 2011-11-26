# Personality of the observer

class Personality
  def initialize(hash)
    @attributes = hash
  end

  def [](key)
    @attributes[key]
  end
end
