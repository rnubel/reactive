# Feelings of the observer towards another
# entity.

class Feelings
  def initialize(hash)
    @attributes = hash
  end

  def [](key)
    @attributes[key]
  end

end
