require File.expand_path('bootstrap')

class Effect
  # Only for testing/comparison
  attr_reader :emotions_change, :feelings_change

  def initialize(emotions_change = {}, feelings_change = {})
    @emotions_change = emotions_change
    @feelings_change = feelings_change
  end

  def update_emotions(emotions)
    self.emotions_change.each do |attribute, value|
      emotions.change_attribute_by(attribute, value)
    end
  end

  def ==(other)
    self.emotions_change == other.emotions_change &&
    self.feelings_change == other.feelings_change
  end
end
