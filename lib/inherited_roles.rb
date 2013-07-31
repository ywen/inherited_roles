require "#{__dir__}/inherited-roles/model_initializer"
Dir["#{File.dirname(__FILE__)}/inherited-roles/**/*.rb"].each do |f| 
  require f
end
