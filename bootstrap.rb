module Reactive;end

Dir["lib/reactiveai/*.rb"].each do |file|
  require File.expand_path(file)
end
