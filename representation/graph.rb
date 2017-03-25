require 'matrix'

class Graph

  attr_accessor :adjacency_matrix

  def adjacency_matrix
    @adjacency_matrix.to_a
  end

  def adjacency_matrix= array_matrix
    @adjacency_matrix = Matrix.rows(array_matrix) if array_matrix.class.eql?(Array)
  end

  def dag?
  end

  def cyclic?
  end

  def tree?
  end

  def connected?
  end

  def complete?
  end

  def directed?
  end
end