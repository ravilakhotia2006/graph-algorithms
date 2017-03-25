require_relative '../error/error'
require_relative './vertex'

class Edge
  attr_accessor :from, :to, :weight

  def initialize(from , to , weight = 0)
    if from.class.eql? Vertex and to.class.eql? Vertex
      @from = from
      @to = to
      @weight = weight
    else
      raise VertexError, 'from and to should be an instance of Vertex'
    end
  end
end