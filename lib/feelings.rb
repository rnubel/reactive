# Feelings of the observer towards another
# entity.

class Feelings
  def initialize(hash)
    @attributes = {}
    hash.each do |key, value| 
      @attributes[key.to_sym] = value.to_f
    end
  end

  def [](key)
    @attributes[key]
  end

  def to_hash
    @attributes
  end

  def update_attribute_by(attr, value)
    @attributes[attr] += value
  end
end
