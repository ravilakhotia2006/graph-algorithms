class Vertex
  attr_accessor :name, :neighbours

  def initialize(name)
    @name = name
    @neighbours = []
  end
end