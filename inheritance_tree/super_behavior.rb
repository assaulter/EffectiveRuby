class Base
  def m1(x,y)
    "Base #{x} #{y}"
  end
end


class Derived < Base
  def m1(x)
    super(x, x)
    # 当然これは出来ない
    # super()
  end
end

derived = Derived.new
p derived.m1(1)
# print Base 1 1

module CoolFeatures
  def feature_a
    "feature a"
  end
end

class Vanilla
  include(CoolFeatures)

  def feature_a
    super # call CoolFeatures feature_a
  end
end

vanilla = Vanilla.new
p vanilla.feature_a
