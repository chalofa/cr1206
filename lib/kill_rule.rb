require 'rule'

class KillRule < Rule

  def apply
    DeadCell.new
  end

end
