class Player 
    def initialize(name)
        @name = name
    end
    
    def choose_position()
        puts ' 1 | 2 | 3 '
        puts '***********'
        puts ' 4 | 5 | 6 '
        puts '***********'
        puts ' 7 | 8 | 9 '
        position = gets.chomp()
      end
end