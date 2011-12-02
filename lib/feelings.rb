# Feelings of the observer towards another
# entity.
require 'active_support/core_ext/hash'

class Feelings
  def initialize(hash)
    @attributes = hash.symbolize_keys!
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
