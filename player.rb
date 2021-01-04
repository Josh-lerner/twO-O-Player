class Player
  attr_accessor :name, :life

  def initliaze(name)
    @name = name
    @life = 3
  end

  def incorect
    @life -=1
  end
end