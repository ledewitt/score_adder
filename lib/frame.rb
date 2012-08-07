module ScoreAdder
  class Frame
    
    def initialize
      @shot_1
      @shot_2
    end
    
    attr_accessor :shot_1, :shot_2
    
    def to_s
      "#{@shot_1} | #{@shot_2}"
    end
    
  end
end