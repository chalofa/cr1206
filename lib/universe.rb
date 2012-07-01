require 'matrix'

class Universe
  attr_reader :dimension, :grid

  def initialize(dimension = 3)
    @dimension = dimension
    @grid = Matrix.build(@dimension) { AliveCell.new }
  end

  def to_s
    grid.row_size.times.reduce('') do |acum, index|
      acum << grid.row(index).reduce('') do |text, cell|
        text << cell.to_s
      end + "\n"
    end
  end
end
