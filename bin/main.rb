#!/usr/bin/env ruby

loop do 
    puts "Ready? \n Enter n to exit the game!"

    play = gets.chomp

    puts "Exiting game!!!" if play.downcase == "n"
    break if play.downcase == "n"

    dashboard_Arr = ["1","2","3","4","5","6","7","8","9"]

    def dashboard (board)

        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts "-----------"
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts "-----------"
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
        
    end

   

    for x in dashboard_Arr
        nums = "1".."9"
        
        player = 1 if x.to_i.odd?
        player = 2 if x.to_i.even?
       
       puts " ========================
 ========================"
        loop do 
        puts "Player#{player}\n Make a move with number from 1 to 9"
        input =gets.chomp
        puts input
        puts "Your move is not valid!" unless nums.include?(input)
        
        
        if player ==1 && nums.include?(input) 
            dashboard_Arr[input.to_i - 1] = "X"  
        elsif player ==2 && nums.include?(input)
             dashboard_Arr[input.to_i - 1] = "O"
        end
            dashboard(dashboard_Arr)
        break if nums.include?(input)
        end
        
        
    end


end


