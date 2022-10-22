class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def loosers
    @loosers_array = Array.new

    5.times do
      loosers_random = rand(1...100)
      
      @loosers_array.push(loosers_random)
    end

    render({ :template => "lottery_stuff/boohoo.html.erb"})
  end 
end
