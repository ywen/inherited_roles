require "#{__dir__}/inherited_roles/model_initializer"
require "#{__dir__}/inherited_roles/equal_by_name"
Dir["#{File.dirname(__FILE__)}/inherited_roles/**/*.rb"].each do |f| 
  require f
end
