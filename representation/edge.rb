require_relative '../error/error'

class Edge
  
  attr_accessor :from, :to, :weight

  def initialize(from , to , weight = 0)

    if !from.class.eql? Vertex or !to.class.eql? Vertex
      @from = from
      @to = to
      @weight = weight
    else
      raise VertexError, 'from and to should be of class Vertex'
    end
  end
end