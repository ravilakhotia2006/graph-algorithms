require 'matrix'
require_relative '../representation/edge'
require_relative '../representation/vertex'

class Graph
  attr_accessor :edges, :vertices, :adjacency_matrix, :directed

  def initialize(directed: false)
    @edges = []
    @vertices = []
    @directed = directed
  end

  # TODO: validation needed if edge is already present or not
  def add_edges(edges)
    edges.each do |edge|
      @edges << edge if !@edges.include?(edge)

      @vertices << edge.from if !vertex_exist?(edge.from)
      @vertices << edge.to if !vertex_exist?(edge.to)
    end

    build_adjacency_matrix.to_a
  end

  def adjacency_matrix
    @adjacency_matrix.to_a
  end

  def adjacency_matrix= array_matrix
    @adjacency_matrix = Matrix.rows(array_matrix) if array_matrix.class.eql?(Array)

    build_edges
  end

  def dag?
  end

  # a cyclic graph or circular graph is a graph that consists of a single cycle,
  # or in other words, some number of vertices connected in a closed chain
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

  def vertex_count
    @vertices.length
  end

  def edge_count
    @edges.length
  end

  private
    def vertex_exist?(vertex)
      @vertices.map { |vertex| vertex.name }.include?(vertex.name)
    end

    def build_adjacency_matrix
      arr = Array.new(vertex_count) { Array.new(vertex_count, 0) }

      vertex_names = @vertices.map { |vertex| vertex.name }

      edges.each do  |edge|
        if edge.weight > 0
          arr[vertex_names.index(edge.from.name)][vertex_names.index(edge.to.name)] = edge.weight
          arr[vertex_names.index(edge.to.name)][vertex_names.index(edge.from.name)] = edge.weight if !@directed
        else
          arr[vertex_names.index(edge.from.name)][vertex_names.index(edge.to.name)] = 1
          arr[vertex_names.index(edge.to.name)][vertex_names.index(edge.from.name)] = 1 if !@directed
        end
      end

      count = vertex_count
      count.times do |index|
        arr[index][index] = 1
      end

      @adjacency_matrix = Matrix.rows(arr)
    end

  def build_edges

  end
end