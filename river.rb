# river.rb

class River
  
  attr_accessor :name, :length, :countries, :discharge
  
  def initialize(name)
    self.name = name
    self.length = nil
    self.countries = nil
  end
  
  def flood
    self.discharge *= 1.3
  end
  
  def dry_up
    self.discharge *= 0.5
  end
  
end
