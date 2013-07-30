class Organization
  attr_reader :name
  attr_accessor :children

  def initialize(name)
    @name = name
  end
end
