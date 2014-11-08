require 'active_support'

# let's setup some foodtrucks
class Foodtruck
  def self.goleg?
    raise NotImplementedError
  end

  def self.fast?
    raise NotImplementedError
  end

  def self.low_price?
    raise NotImplementedError
  end

  def self.days_available
    raise NotImplementedError
  end
end

class Foodtruck::PizzaNCo < Foodtruck
  def self.goleg?
    true
  end

  def self.fast?
    true
  end

  def self.low_price?
    true
  end

  def self.days_available
    [1,3,5]
  end
end

class Foodtruck::AnNam < Foodtruck
  def self.goleg?
    true
  end

  def self.fast?
    false
  end

  def self.low_price?
    true
  end

  def self.days_available
    [3]
  end
end

class Foodtruck::LobstaTruck < Foodtruck
  def self.goleg?
    true
  end

  def self.fast?
    false
  end

  def self.low_price?
    false
  end

  def self.days_available
    [4]
  end
end

class Foodtruck::NotSoYummy < Foodtruck
  def self.goleg?
    false
  end

  def self.days_available
    [1,2,3,4,5]
  end
end
