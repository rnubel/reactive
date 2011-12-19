# Memory-model of a person. Note that the actual person object
# itself is agnostic except for some connection you are expected
# to provide.

class Reactive::Entity
  attr_accessor :name
  attr_accessor :feelings_toward

  def initialize(args={})
    @name = args[:name] || ""
    @feelings_toward = args[:feelings_toward] || {}
  end

  def perform(action)

  end

  def sentiment_toward
    # Reduce feelings_toward into a single number.
    positive_attrs = [:like]
    negative_attrs = [:fear]

    score = feelings_toward.to_hash.reduce(0) do |score, (attr, val)|
      if positive_attrs.include? attr
        score + val
      elsif negative_attrs.include? attr
        score - val
      else
        score
      end
    end

    return Reactive::Sentiment.new(score)
  end
end
