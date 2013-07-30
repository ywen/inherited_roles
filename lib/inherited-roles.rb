Dir["#{File.dirname(__FILE__)}/inherited-roles/**/*.rb"].each do |f| 
  require f
end

module Inherited
  module Roles
    # Your code goes here...
  end
end
