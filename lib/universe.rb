require 'matrix'
require 'god'

class Universe
  attr_reader :dimension, :grid

  def initialize(dimension = 3)
    @dimension = dimension
    @grid = Matrix.build(@dimension) { AliveCell.new }
  end

  def alive_count(row, column)
    left_neighbors_count(row, column) +
        center_neighbors_count(row, column) +
        right_neighbors_count(row, column)
  end

  # next universe generation
  def next!
    grid.each_with_index do |cell, row, column|
      God.judge(cell, alive_count(row, column))
    end
  end

  def to_s
    grid.row_size.times.reduce('') do |acum, index|
      acum << grid.row(index).reduce('') do |text, cell|
        text << cell.to_s
      end + "\n"
    end
  end

  private

  def after_offset(position)
    (position + 1) % dimension
  end

  def before_offset(position)
    position - 1
  end

  def center_neighbors_count(row, column)
    grid.element(before_offset(row), column).to_i +
        grid.element(after_offset(row), column).to_i
  end

  def left_neighbors_count(row, column)
    left_column = before_offset(column)
    grid.element(before_offset(row), left_column).to_i +
        grid.element(row, left_column).to_i +
        grid.element(after_offset(row), left_column).to_i
  end

  def right_neighbors_count(row, column)
    right_column = after_offset(column)
    grid.element(before_offset(row), right_column).to_i +
        grid.element(row, right_column).to_i +
        grid.element(after_offset(row), right_column).to_i
  end

end
