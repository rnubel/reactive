# Memory-model of a person. Note that the actual person object
# itself is agnostic except for some connection you are expected
# to provide.

class Entity
  attr_accessor :name
  attr_accessor :feelings_toward

  def initialize(args={})
    @name = args[:name] || ""
  end

  def perform(action)

  end
end
