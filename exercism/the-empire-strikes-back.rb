require "securerandom"

class Life
  attr_accessor :midi_chlorians, :side

  def fight(life)
    if @side != life.side
      p "Darth Vader: Luke, join me !!!" 
      p "Luke: I'll never join you! you killed my father !"
      p "Darth Vader: No. I am your father"
      p "Luke: No ... No. That's not true!"
    end
  end
end

class TheForce
  @@sides = { :ligth => 1, :neutral => 0, :dark => -1, }

  def create
    @life = Life.new
    @life.midi_chlorians = SecureRandom.random_number
    @life.side = @@sides.to_a.sample[0]
    @life
  end
end 

theForce = TheForce.new
darth_vader = theForce.create
luke = theForce.create
darth_vader.fight luke
