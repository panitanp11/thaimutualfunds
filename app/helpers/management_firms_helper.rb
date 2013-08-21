module ManagementFirmsHelper
  def nav(x)
    x == 0 ? "-" : x
  end

  def diff(x, y)
    if x == 0 || y == 0
      "-"
    else
      x - y
    end
  end

  def percentage(x, y)
    if x == 0 || y == 0
      "-"
    else
     number_with_precision ((x - y) * 100 / y), precision: 4
    end
  end

  def text_color(x, y)
    diff(x, y).is_a?(String) || diff(x, y) > 0 ? "#468847" : "#b94a48"
  end

end
