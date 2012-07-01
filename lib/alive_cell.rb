require 'cell'

class AliveCell < Cell

  def initialize
    @state = :alive
  end

  def to_s
    'o'
  end

end
