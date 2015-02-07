class Dessert
  
  def name
    @name
  end
  def calories
    @calories
  end
  def calories=(n)
    @calories=n
  end
  def name=(n)
    @name=n
  end
  def d=(n)
    @d=n
  end
  def d
    @d
  end
    
  def initialize(name, calories)
    # your code here
    @name=name
    @calories=calories
  end
  def healthy?
    if @calories<200
      return true
    end
    return false
    # your code here
  end
  def delicious?
    @d=true
    if @name=="licorice jelly bean"
      @d=false
    end
    return @d
    # your code here
  end
end

class JellyBean < Dessert
  
  def flavor
    @flavor
  end
  def flavor=(n)
    @flavor=n
  end
  
  def initialize(flavor)
    a=flavor<< " jelly bean"
    @name=a
    @calories=5
    # your code here
  end
end