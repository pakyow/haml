libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

# Gems 
require 'haml'

# Processor
Pakyow::App.processor :haml do |content|
  Haml::Engine.new(content).render
end
