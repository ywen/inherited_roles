class Role
  private_class_method :new
  attr_reader :name
  private :name

  class << self
    def available_roles
    end
  end

  def initialize(name)
    @name = name
  end
end
