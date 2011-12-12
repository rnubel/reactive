module Reactive::Actions
  class Murder
    attr_accessor :source_entity, :destination_entity
    def initialize(context)
      @source_entity = context[:source]
      @destination_entity = context[:destination]
    end

    def compute_effect
      sentiment_src = @source_entity.sentiment_toward
      sentiment_dst = @destination_entity.sentiment_toward

      # TODO: pull up
      feelings_change_base = {
                                :like => -1,
                                :fear => 1
                             }
      feelings_change = {}
      feelings_change_base.each do |attr, val|
        feelings_change[attr] = val * sentiment_dst.score
      end

      Reactive::Effect.new({}, { @source_entity => feelings_change })
    end
  end
end
