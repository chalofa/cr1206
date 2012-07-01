require 'cell'

class DeadCell < Cell

  def initialize
    @state = :dead
  end

  def to_s
    '.'
  end

end
