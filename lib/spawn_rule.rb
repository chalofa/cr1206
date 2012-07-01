require 'rule'

class SpawnRule < Rule

  def apply
    AliveCell.new
  end

end
