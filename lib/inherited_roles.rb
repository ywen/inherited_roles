require "#{__dir__}/inherited_roles/model_initializer"
Dir["#{File.dirname(__FILE__)}/inherited_roles/**/*.rb"].each do |f| 
  require f
end
