class Player
  attr_reader :sign

  def initialize(sign)
    @sign = sign
    sign.player = self
  end
end
