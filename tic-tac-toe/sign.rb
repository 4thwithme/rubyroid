require_relative 'constants'

class Sign
  attr_accessor :player, :ui_icon

  def initialize(type, ui_icon)
    @type = type
    @ui_icon = ui_icon
  end
end

class X_Mark < Sign
  def initialize
    super(X_MARK, X_MARK_ICON)
  end
end

class Circle < Sign
  def initialize
    super(CIRCLE, CIRCLE_ICON)
  end
end
