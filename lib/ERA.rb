Dir["#{File.dirname(__FILE__)}/ERA/**/*.rb"].each(&method(:require))

module ERA
  class Error < StandardError; end
  # Your code goes here...
end
