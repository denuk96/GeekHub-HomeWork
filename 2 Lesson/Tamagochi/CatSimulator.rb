class Cat
	def initialize name 
	  @name = name
 	  @health = 100
 	  @hearty = 50
	  @waterfull = 50
	  @peppiness = 50 
	  @morale = 50 
	  @killingNature = 50
	  @purity = 100
	  @passageOfTime = 1
	  @chance = 0
	  p 'Ancient evil ' + @name + ' has come'
	end

	def feed 
	  p 'Uaah! Time to devour somebody!!'
	  p  @name + ' has eaten smth'
	  @hearty = @hearty + rand(8...21) 
	  @waterfull = @waterfull -rand(3...7)
		
	  randomEvent(rand(1..4))
	  passageOfTime
	  statusCheck
	  question
	end 

	def play
	  @morale= @morale + rand(8...21)
	  @waterfull = @waterfull -rand(3...7)
	  @purity = @purity - rand(1..5)
      p @name + ' has played enough. It seems happier'

	  passageOfTime
	  statusCheck
	  question
	end

	def sleep
	  @peppiness = @peppiness + rand(8...15)
	  @health = @health + rand(3...6)

	  p @name + ' has slept a lot. But It wanna do that again.'
	  p 'This is a cat, what did you expect?'

	  passageOfTime
	  statusCheck
	  question
	end

	def drink
      @waterfull = @waterfull + rand(8...21)
	  @purity =  @purity + rand(1..3)
	  p 'blop blop blop blop'

	  passageOfTime
	  statusCheck
	  question
	end

	def hunt
      @waterfull = @waterfull -rand(3...7)

	  randomEvent(rand(5..6))
	  passageOfTime
	  statusCheck
	  question
	end

	def walk
	  @morale = @morale + rand(8...21)
	  @peppiness = @peppiness + rand(3...8)
	  @purity =  @purity - rand(1...11)
	  p 'Your ' + @name + ' is walking'

	  randomEvent(rand(7..10))
	  passageOfTime
	  statusCheck
	  question
	end 

	def petCat
	  @morale = @morale + rand(8...16)
	  @killingNature= @killingNature - rand(3...6)
	  @health = @health + rand(3...11)

	  randomEvent(rand(7...11))
	  passageOfTime
	  statusCheck
	  question
	end

	def date
	  p 'Oh, your ' + @name + ' is going to visit that beautiful lady-cat'
	  if @hearty >=50 && @health >= 70
		p 'Your pet is not slim and sick like that cat, visited before'
		@morale = @morale + rand(5...21)
		@peppiness = @peppiness + rand(5...11)
	  else 
		p 'Fail. Nobody like slim and sick cats. Even nother cats...'
		@morale = @morale - rand(5...11)
	  end

	  randomEvent(rand(11..13))
	  passageOfTime
	  statusCheck
	  question
	end

	def wash
	  p 'Time to wash your ' + @name
	  p 'Probably, he dosnt like it.'
	  p 'But now ' + @name + ' looks better.'
	  @purity = @purity + 70
	  @killingNature = @killingNature + rand(10..20)
	  @waterfull = @waterfull + rand(5...11)
	  @morale = @morale - rand(5..11)
	  @peppiness = @peppiness + rand(5...16)

	  randomEvent(12)
	  passageOfTime
	  statusCheck
	  question
    end

	def wait
	  p 'You decided just relax and watch your pet'

	  randomEvent(rand(7..12))
	  passageOfTime
      statusCheck
	  question 
	end

	def secondLife
	  @chance = @chance + 1
	  if @chance == 1
	    p 'Your ' + @name + ' got a second life'

	    @health = @health + rand(10...25)
	    @hearty = @hearty - rand(10...25)
	    @waterfull = @waterfull - rand(10...25)
	    @peppiness = @peppiness - rand(10...25)
	    @morale = @morale  - rand(10...25)
	    @killingNature = @killingNature - rand(10...25)
	    @purity = @purity - rand(10...25)

	    statusCheck
        question
	  else
	    p 'You have already used your Second Life'
	  end	 		
	end

	def fight
	  p 'Your ' + @name + ' met another cat.'
	  p 'Your cat attacked uninvited guest'
	   if @hearty >= 50 && @morale >= 50
	     p @name + ' won that fight'
	 	 p 'Kitty feel alpha himself'
	 	 @morale = @morale + rand(8...21)
	 	 @hearty = @hearty + rand(5...11)
	 	 @killingNature = @killingNature + rand(10...31) 
	   else 
	 	 p @name + ' defeated that fight. Cause he has low energy and moral.'
	 	 p 'You should look after your pet better.'
	 	 @morale = @morale - rand(5...16)
	 	@health = @health - rand(15...26)
	   end
	end

	def guest
	  p 'Suddenly in your room appeared a pigeon.'
	  if @hearty <= 50 and @killingNature >= 50 and @morale >= 40
	    p 'That poor pigeon. He had not any chances'
		p 'Atleast, your ' + @name + ' is not hugnry'
		@hearty = @hearty + rand(5...16)
		@killingNature = @killingNature + rand(10...21)
		@morale = @morale + rand(5...16)
	  else
		p @name + ' dont even pay attention. You made him to lazy'
	  end
	end
  	
	def help
		p '-------------HELP----------------'
		p '1 - feed'
		p '2 - play'
		p '3 - drink'
		p '4 - hunt'
		p '5 - sleep'
		p '6 - walk'
		p '7 - pet'
		p '8 - date'
		p '9 - wait'
		p '10 - wash'
        p '0 - HELP'
        p '777 - SecondLife (Boosts every state. But only once)'
		p '---------------------------------'
	end


	def question 
		p 'What ' + @name + ' have to do now?'
	end

	def turnsCounter
		p '------------------'
		@passageOfTime = @passageOfTime + 1
		p 'Your ' + @name + ' has been alive for ' + @passageOfTime.to_s + ' turns'
		p '------------------'
	end

	######################3

	private

	def passageOfTime
      @health = @health + 5
	  @hearty = @hearty - rand(3...6)
	  @waterfull = @waterfull - rand(3...6)
	  @peppiness = @peppiness - rand(3...6) 
	  @morale = @morale  - rand(3...6) 
	  @killingNature = @killingNature - rand(3...6)
	  @purity = @purity - rand(1...6)

	  if @hearty <= 0 or @waterfull <= 0 or @peppiness <= 0 or @morale <= 0
	    @health = @health - rand(15...26)
	  end

	  if @health >= 100
	    @health = 100
	  end

	  if @hearty >= 125
	    p 'Damn.. ' + @name + ' has been burst out in your kitchen..'
		p 'Someone (you) must clean those huge spots on the ceiling.'
		@health = @health - 400
	  end

	  if @waterfull >= 125
	    p 'Damn.. ' + @name + ' has been burst out in your kitchen..'
	    p 'Someone (you) must clean those huge spots on the ceiling.'
	    @health = @health - 400
	  end

	  if @killingNature >= 125
			p 'You are walking to the kitchen as usual.'
			p 'Suddenly you hear behind you..'
			p 'Omae wa mou shindeiru'
			p 'Your ' + @name + ' trying to attack you. '
			p 'You are getting that can be alive only one.'
			sleep 3
			p 'That fight was epic. You won. You are alive.'
			p 'But you can say same about your ' + @name
			@health = @health - 400
	  end

      if @morale >= 100
	    @morale = 100
	  end

	  if @peppiness >= 101
	    @peppiness = 100
	  end

	  if @purity >= 100
	    p 'Damn... Your drown ' + @name + '. Poor cat...' 
		p 'Everything has to have healthy measure.'
		@health = @health - 409
	  end

	  if @purity <= 0
	    @health = @health - rand(5...10)
	  end

	  if @health <= 0 
	    p @name + ' is dead. You are awful.'
	    exit
	  end
	end 





	def randomEvent (x)
	  case x
	  when 1
		p 'Ooops, that meal was unfit.'
		p @name + ' has pucked on your karpet. Enjoy your cleaning'
		p 'Give him smth another.'
		@hearty = @hearty - rand(5...11)
		@waterfull = @waterfull - rand(5...11)
		@health = @health - 5
	  when 5
		p 'Your ' + @name + ' has caught something.'
		p 'Its not a wasted day'
		@killingNature = @killingNature + rand(15...31)
		@hearty = @hearty + rand(6...13)
		@morale= @morale + rand(6...13)
	  when 6 
	    p 'So this is a hunter..' + @name + ' got nothing to eat.'
	    p 'You should help your loser'
	    @morale= @morale - rand(6...13)
	  when 8
	    fight
	  when 9
	 	p @name + ' met a lady cat. Let them be alone.'
	 	@morale = @morale + rand(6...21)
	  when 10	
	 	guest
	  when 11
	    fight
	  when 12
	 	p @name + ' got cold. its not good.'
	 	p 'You used antibiotics and drugs to made him feel good himself'
	 	@health = @health - rand(10...46)
	 	@waterfull = @waterfull - rand(1...21)
	 	@peppiness = @peppiness - rand(1...21)
	  else 
	    p 'Nothing has happened'
	  end

	end

	def statusCheck
      p '-------------------------------------------' 
      p '<STATUS>'

	  h = @health
	  case h
	  when (0...26)
	  p 'HEALTH: ' + 'Your ' + @name + ' is getting dead! You must do smth!'
	  when  (26...76)
	  p 'HEALTH: ' + 'Health your ' + @name + ' is normal. But can be better' 
	  when (76..101)
	  p 'HEALTH: ' + 'Your ' + @name + ' has excellent health'
	  else 
	  p 'HEALTH: ' + 'Heals points are out'
	  end

	  e = @hearty
	  case e 
	  when (0...26)
	  p 'HEARTY: ' + @name + ' dies by hunger. Do smth! '
	  when  (26...76)
	  p 'HEARTY: ' + 'Your  ' + @name + ' is feeling hunger ' 
	  when (76...101)
	  p 'HEARTY: ' + 'Your ' + @name + ' is not hungry '
	  when (101..125)
	  p 'HEARTY: ' + 'Your cat eat to much! ' + @name + ' could die by overeating!'
	  else 
	  p 'HEARTY: dying...'
	  end 

	  s = @peppiness
	  case s 
	  when (0..25)
	  p 'PEPPINESS: ' + @name + ' has not been slept for a long time. Let him rest! '
	  when  (26...76)
	  p 'PEPPINESS: ' + 'Your  ' + @name + ' is loocked tired. ' 
	  when (76...101)
	  p 'PEPPINESS: ' + 'Your ' + @name + ' dont wanna sleep. '
	  when (101..150)
	  p 'PEPPINESS: ' + @name + ' to lazy. Move it.'
	  else 
	  p 'PEPPINESS: dying...'
	  end

	  a = @killingNature
	  case a
	  when (0...26)
	  p 'KILLINGNATURE: ' + @name + ' feels useless itself. Let him hunt smth! '  	
	  when  (26...76)
	  p 'KILLINGNATURE: ' + 'Your  ' + @name + ' is feeling bored itself. ' 
	  when (76...101)
	  p 'KILLINGNATURE: ' + 'Your ' + @name + ' walks like dominator. '
	  when (101..125)
	  p 'KILLINGNATURE: ' + 'Your cat getting agressive. ' + @name + ' its may be a trouble.'
	  else 
	  p 'KILLINGNATURE: dying...'
	  end

	  w = @waterfull
	  case w
	  when (0...26)
	  p 'WATERFULL: ' + @name + ' feels thirst. Give him water! '  	
	  when  (26...76)
	  p 'WATERFULL: ' + 'Your  ' + @name + ' is feeling thirst a bit. ' 
	  when (76...101)
	  p 'WATERFULL: ' + 'Your ' + @name + ' dont need a water. '
	  when (101..125)
	  p 'WATERFULL: ' + 'Your cat drink to much. ' + @name + ' getting be huge.'
	  else 
	  p 'WATERFULL: dying...'
	  end

	  m = @morale 
	  case m
	  when (0...26)
	  p 'MORALE: ' + @name + ' feels bad. Play with him! '  	
	  when  (26...76)
	  p 'MORALE: ' + 'Your  ' + @name + ' have a good enough mood. ' 
	  when (76..101)
	  p 'MORALE: ' + 'Your ' + @name + ' have a exellent mood. Funny cat.'
	  else 
	  p 'MORALE: dying...'
	  end

	  c = @purity
	  case c
	  when (0...26)
	  p 'PURITY: ' + @name + ' looks like sludge. Would you like to clean your pet? '  	
	  when  (26...76)
	  p 'PURITY: ' + 'Your  ' + @name + ' dirty a bit ' 
	  when (76..124)
	  p 'PURITY: ' + 'Your ' + @name + ' is clean enough.'
	  else 
	  p 'PURITY: dying...'
	  end

	  p '-------------------------------------------'

	  turnsCounter
	end
end	
end 
##############################################################################


p '------------- Hello! This is "Cat simulator v1.0" -------------- '
p 'Do you wanna play the game? Yes/No '
answer = gets.chomp.downcase
	if answer == 'Yes' or ''
	  p 'Lets start!'
	  p 'Write pets name down'
	  @name = gets.chomp.capitalize
	  pet = Cat.new @name

	else answer == 'No'
	  p 'So, goodby'	
	  exit
	end
	

p 'Your cat needs water, food, sleep, purity, health, murders to be alive'
p 'WARNING: everything must have measures!'
p 'Avoid overstepping. Your cat let you know what is normal or wrong'
p 'To give ' + @name + ' order use 1-10. '
p 'To get HELP use 0'
p 'Try to be decent guy=)'
command = gets.chomp.to_i
 	while command != 'stop'
 	  case command
 	  when 1
 	    pet.feed
 	    command = gets.chomp.to_i
 	  when 2
 	    pet.play
 		command = gets.chomp.to_i
 	  when 3
 	    pet.drink
 		command = gets.chomp.to_i
      when 4
 	    pet.hunt
 	    command = gets.chomp.to_i
 	  when 5
 	    pet.sleep
 	    command = gets.chomp.to_i
 	  when 6
 	    pet.walk
 		command = gets.chomp.to_i
 	  when 7
 	    pet.petCat
 		command = gets.chomp.to_i
 	  when 8
 	    pet.date
 		command = gets.chomp.to_i
 	  when 9
 	    pet.wait
 		command = gets.chomp.to_i
 	  when 10
 		pet.wash
 		command = gets.chomp.to_i
 	  when 0
 	    pet.help
 		command = gets.chomp.to_i
 	  when 777
 		pet.secondLife
 		command = gets.chomp.to_i
 	  else 
 		p 'Your ' + @name + ' dont understend you...'
 		p '0 to get help'
 		command = gets.chomp.to_i
 	  end

	end