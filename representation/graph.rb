require 'matrix'
require_relative '../representation/edge'
require_relative '../representation/vertex'

class Graph
  attr_accessor :edges, :vertices, :adjacency_matrix

  def initialize
    @edges = []
    @vertices = []
  end

  # TODO: validation needed if edge is already present or not
  def add_edges(edges)
    edges.each do |edge|
      @edges << edge if !@edges.include?(edge)

      @vertices << edge.from if !vertex_exist?(edge.from)
      @vertices << edge.to if !vertex_exist?(edge.to)
    end
  end

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

  private
    def vertex_exist? vertex
      @vertices.map { |vertex| vertex.name }.include?(vertex.name)
    end
end