module ScoreAdder
  class Frame
    
    def initialize
      @shot_1
      @shot_2
    end
    
    attr_accessor :shot_1, :shot_2
    
    def print_frame
      "#{@shot_1} | #{@shot_2}"
    end
    
  end
end