class Building
  attr_reader :units, :renters, :rented_units

  def initialize
    @units = []
    @renters = []
    @rented_units = []
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

  def add_rented_units
    @rented_units << @units[1]
  #   @units.each do |unit|
  #     if unit.renter != nil
  #       @rented_units << unit
  #   end
  # end
  end

  def renter_with_highest_rent
  #   @units.each do |unit|
  #       highest_rent = unit.monthly_rent > unit.monthly_rent
  #   end
      # if renter is == highest_rent
  # end
  end

  def units_by_number_of_bedrooms
    number_of_bedrooms = Hash.new
    @units.each do |unit|
      number_of_bedrooms[unit.bedrooms] = number_of_bedrooms[unit.bedrooms]
  end

  @units.each do |unit|
      number_of_bedrooms[unit.bedrooms] = number_of_bedrooms[unit.number]
    end
    number_of_bedrooms
  end
end
