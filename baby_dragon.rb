class BabyDragon

  attr_reader :fullness_level, :name

  def initialize(name, color = "gray")
    @name = name
    @is_asleep = false
    # The dragon is not hungry when @fullness_level is 10
    # The dragon is very hungry when @fullness_level is 0
    @fullness_level = 10
    @color = color
    @is_in_love = false
  end

  #colors
  def discover_personality
    case @color
      when "blue"
        puts "#{@name} is sick,tired and moving slowly!"

      when "red"
        puts "#{@name} is mad, angry, disgusted and out of control!"

      when "green"
        puts "#{@name} is happy, calm and ready to learn!"

      when "yellow"
        puts "#{@name} is frustrated, worried, excited and anxious!"
      end

  end

  def eat
    puts "#{@name} eats popcorn, cheez-its, seaweed, cheetos, burritos"

    @fullness_level = 10

    passage_of_time
  end

  def play
    puts "#{@name} chills out next to the fireplace and eats a lot of salty snacks"

    passage_of_time
  end

  def takes_a_nap
    puts "#{@name} curls up and dozes off..."
    
    @is_asleep = true

    3.times do
      passage_of_time
    end

    @is_asleep = false
  end

  def passage_of_time
    if (@fullness_level > 0)
      @fullness_level -= 1
    else
      if (@is_asleep)
        @is_asleep = false
        puts "#{@name} woke up!"
      end
      self.dragon_eating_user
      puts "#{@name} was super hangry! They ATE YOU! >:("
      exit
    end
  end

  def falls_in_love
    if @is_in_love
      puts "They're already in love! #{self.name} isn't a cheater!"
    else
      @is_in_love = true
      puts "
             _)               (_
            _) \\/\\%/\\ /\\_/\\ / (_
           _)  \\(0 0) (0 0)//  (_
           )_ -- \(oo) (oo)/ -- _(
            )_ / /\\__,__//\\ \\ _(
             )_ /   --;--   \\ _(
         *.    ( (  )) ((  ) )    .*
           '...(____)z z(____)...'
      
      "
      puts "#{self.name} fell in love!"
    end
  end

  def dragon_eating_user
  puts " 
                /|                                                            
          //^^^  ~~~~^^^^---___                   ^\\            /|             
      /c~~`'     ____          ^^^^             /| \\        /_ _\\            
      ~^^--; _\\\\    ~~~---___     ~~~~        / '|  \\       | |            
          /_/                 --        ~~~__/ ,  |   \\       \\ \\            
          ~                      -        |\\--;' |  |    ;;      | |           
                                |          \\   |    |    /     /  / 
                                |__ \\  \\     ~--|/~~\\/~~|/     /  /   
                               /---_.     \\  \\         |    /      |  | 
                             ;-/   ~\\-----   ;         |           |  |            
                          '--\\_,--------'           |          |   |           
                            / ____    _^^^_..        |        -                
                            |       /^       ..       |       _    |            
                            | ---- |      .           |      _    |             
                             `     `.      |           |    -    -              
                             ` .--  `      |           -__-    -     
                              / ` -_.     /                   -    
                          _-__ ---^^     /          _---_____--       
                         ///  ///__ -__  / -____--~                
    "
  end
end

puff = BabyDragon.new("Puff The Magic Dragon","green")

puff.discover_personality
puff.play
puff.takes_a_nap
puff.eat
puff.falls_in_love
until (puff.fullness_level == 0)
  puff.play
  puff.takes_a_nap
end