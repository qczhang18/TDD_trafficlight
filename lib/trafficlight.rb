class TrafficLight

  STATES = ['red', 'green', 'yellow']
  @current_state

  def initialize
    @current_state = 0
    print_state
  end

  def change_state
    if @current_state == STATES.length-1
      @current_state = 0
    else
      @current_state += 1
    end
  end

  def print_state
    "The light is #{STATES[@current_state]}"
  end
end
