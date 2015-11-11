class User
  def initialize(name, pin, balence)
    @name = name
    @pin = pin
    @balence = balence
  end

  def name
    @name
  end

  def pin
    @pin
  end

  def balence
  	@balence
  end

  def deposit 
    newbalence = @balence + desamount
  end

  def withdrawl
    newbalence = @balence - withamount
  end 

  
end
