class Shot
  def initialize(pins_standing)
    @pins_standing = pins_standing
  end
 
  attr_reader :pins_standing
 
  def strike?
    @pins_standing.empty?
  end
  
  def to_s(previous_shot = nil)
    if previous_shot
      previous_shot.pins_standing.size - @pins_standing.size
    else
      10 - @pins_standing.size
    end
  end
end

class Frame
  def initialize
    @first_shot  = nil
    @second_shot = nil
  end
 
  def add_shot(pins_standing)
    shot = Shot.new(pins_standing)
    if @first_shot.nil?
      @first_shot = shot
    else
      @second_shot = shot
    end
  end
 
  def finished?
    (@first_shot and @first_shot.strike?) or @second_shot
  end
  
  def to_s
    [ @first_shot.to_s,
      @second_shot && @second_shot.to_s(@first_shot) ].join(" / ")
  end
end

class Game
  def initialize
    @frames = [ ]
  end
  
  attr_reader :frames
 
  def add_shot(pins_standing)
    if @frames.last.nil? or @frames.last.finished?
      @frames << Frame.new
    end
    @frames.last.add_shot(pins_standing)
  end
end
