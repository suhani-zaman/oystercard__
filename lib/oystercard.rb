class Oystercard

  attr_reader :balance, :state

  MAX_AMOUNT = 90

  def initialize()
    @balance = 0
    @state = false
  end 

  def top_up(add)
    raise "Exceeds the limit #{MAX_AMOUNT}" if (@balance + add ) > MAX_AMOUNT
    @balance += add
  end

  def deduct(subtract)
    @balance -= subtract
  end

  def in_journey?
    @state = false
  end

  def touch_in
    @state = true
  end
  def touch_out
    @state = false 
  end
end