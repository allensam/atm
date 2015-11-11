require 'csv'
class User
  def initialize(name, pin, newbal)
    @name = name
    @pin = pin
    @newbal = newbal
  end

  def name
    @name
  end

  def pin
    @pin
  end

  def newbal
  	@balence
  end

  CSV.open("info.csv", "wb") do |csv|
    csv << ["row", "of", "CSV", "data"]
    csv << ["another", "row"]
  end

end
