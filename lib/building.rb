class Building
  attr_reader :units, :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units.push(unit)
  end

  def add_renters
    @units.each do |unit|
      @renters << unit.renter.name
    end
  end

  def average_rent
      (@units[0].monthly_rent + @units[1].monthly_rent).to_f / 2
  end
end
