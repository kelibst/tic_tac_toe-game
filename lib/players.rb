class Player
    attr_reader :name, :moves_history
    attr_writer :name, :moves_history
    attr_reader :marker
  
    def initialize(name, marker)
      @name = name
      @marker = marker
      @moves_history = []
    end
  end