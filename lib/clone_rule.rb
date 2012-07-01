require 'rule'

class CloneRule < Rule

  def apply
    @cell.clone
  end

end
