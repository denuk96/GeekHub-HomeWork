	def feed 
	  $hearty += rand(8...21) 
	  $waterfull -= rand(3...7)

	  $p1 = "Uaah! Time to devour somebody!! #{$cat_name} has eaten smth"

	  passageOfTime
	  statusCheck
	end

	def play
	  $morale += rand(8...21)
	  $waterfull -= rand(3...7)
	  $purity -= rand(1..5)

    $p1 = "#{$cat_name} has played enough. It seems happier"
    $p2 = ''
    $p3 = ''
	  passageOfTime
	  statusCheck
	  
	end

	def sleep
	  $peppiness += rand(8...15)
	  $health += rand(3...6)

	  $p1 = "#{$cat_name} has slept a lot. But It wanna do that again. This is a cat, what did you expect?"
	  $p2 = ''
	  $p3 = ''
	  passageOfTime
	  statusCheck
	  
	end

	def drink

    $waterfull += rand(8...21)
	  $purity += rand(1..3)

	  $p1 = 'blop blop blop blop'
	  $p2 = ''
	  $p3 = ''
	  passageOfTime
	  statusCheck
	  
	end

	def hunt
    $waterfull -= rand(3...7)

    $p1 = ''
    $p3 = ''

	  randomEvent(rand(5..6))
	  passageOfTime
	  statusCheck
	  
	end

	def walk
	  $morale += rand(8...21)
	  $peppiness += rand(3...8)
	  $purity -=  rand(1...11)
	  
	  $p1 = "Your #{$cat_name} is walking" 
	  $p3 = ''

	  randomEvent(rand(7..10))
	  passageOfTime
	  statusCheck
	  
	end 

	def petCat
	  $morale += rand(8...16)
	  $killingNature -=  rand(3...6)
	  $health += rand(3...11)

    $p1 = ''
	  $p2 = ''
	  $p3 = ''

	  randomEvent(rand(7...11))
	  passageOfTime
	  statusCheck
	  
	end

	def date
	  
	  if $hearty >=50 && $health >= 70
		
		$morale += rand(5...21)
		$peppiness += rand(5...11)

		$p1 = 'Your pet is not slim and sick like that cat, visited before'
	  else 
		$morale -=  rand(5...11)

		$p1 = 'Fail. Nobody like slim and sick cats. Even nother cats...'
	  end

	  $p2 = ''
	  $p3 = ''

	  randomEvent(rand(11..13))
	  passageOfTime
	  statusCheck
	  
	end

	def wash
	  
	  $purity += 70
	  $killingNature += rand(10..20)
	  $waterfull += rand(5...11)
	  $morale -=  rand(5..11)
	  $peppiness += rand(5...16)

	  $p1 = "Time to wash your #{$cat_name} Probably, he dosnt like it. But now looks better."
	  $p2 = ''
	  $p3 = ''

	  randomEvent(12)
	  passageOfTime
	  statusCheck
	  
    end

	def wait

	  $p1 = 'You decided just relax and watch your pet'
	  $p2 = ''
	  $p3 = ''

	  randomEvent(rand(7..12))
	  passageOfTime
    statusCheck
	   
	end

	def secondLife
	  $chance += 1
	  $p2 = ''
	  $p3 = ''
	  if $chance == 1

	    $p1 = "Your #{$cat_name} got a second life"
	    

	    $health += rand(10...25)
	    $hearty += rand(10...25)
	    $waterfull += rand(10...25)
	    $peppiness += rand(10...25)
	    $morale += rand(10...25)
	    $killingNature += rand(10...25)
	    $purity += rand(10...25)

	    statusCheck
   
	  else

	    $p1 = 'You have already used your Second Life'

	  end	 		
	end

	def fight

	  $p1 = ''
	  $p2 = "Your #{$cat_name} met another cat. Your cat attacked uninvited guest"

	   if $hearty >= 50 && $morale >= 50
	     
	 	 $morale += rand(8...21)
	 	 $hearty += rand(5...11)
	 	 $killingNature += rand(10...31) 

	 	 $p3 =  "#{$cat_name} won that fight. Kitty feel alpha himself"

	   else 
	 	 $morale -=  rand(5...16)
	 	 $health -=  rand(15...26)

	 	 $p3 = "#{$cat_name} defeated that fight. Cause he has low energy and moral. You should look after your pet better."

	   end
	end

	def guest
	  $p1 = ''
	  $p2 = 'Suddenly in your room appeared a pigeon.'

	  if $hearty <= 50 and $killingNature >= 50 and $morale >= 40
		$hearty += rand(5...16)
		$killingNature += rand(10...21)
		$morale += rand(5...16)

	  $p3 = "That poor pigeon. He had not any chances. Atleast, your #{$cat_name} is not hugnry"
	  else
		$p3 = "#{$cat_name} dont even pay attention. You made him to lazy"
	  end
	end

	def turnsCounter
		
		$passageOfTime += 1
		$list_item_8 = "Your #{$cat_name} has been alive for ' + $passageOfTime.to_s + ' turns"
	end

	private

	def passageOfTime
    $health += 5
	  $hearty -=  rand(3...6)
	  $waterfull -= rand(3...6)
	  $peppiness -= rand(3...6) 
	  $morale -= rand(3...6) 
	  $killingNature -= rand(3...6)
	  $purity -= rand(1...6)

	  if $hearty <= 0 or $waterfull <= 0 or $peppiness <= 0 or $morale <= 0
	    $health -= rand(15...26)
	  end

	  if $health >= 100
	    $health = 100
	  end

	  if $hearty >= 125
	  	$health = $health - 400
	  	$p4 = "Damn.. #{$cat_name} has been burst in your kitchen out ..Someone (you) must clean those huge spots on the ceiling."
	  end

	  if $waterfull >= 125
	    $health = $health - 400
	    $p4 = "Damn.. #{$cat_name} has been burst in your kitchen out ..Someone (you) must clean those huge spots on the ceiling."
	  end

	  if $killingNature >= 125
			$health = $health - 400
			$p4 = "You are walking to the kitchen as usual.
			Suddenly you hear behind you..
			Omae wa mou shindeiru
			Your #{$cat_name} trying to attack you. 
			You are getting that can be alive only one.
			
			That fight was epic. You won. You are alive.
			But you can say same about your #{$cat_name}"
	  end

      if $morale >= 100
	    $morale = 100
	  end

	  if $peppiness >= 101
	    $peppiness = 100
	  end

	  if $purity >= 100
			$health = $health - 409
			$p4 ="Damn... Your drown #{$cat_name}. Poor cat... 
					Everything has to have healthy measure."
	  end

	  if $purity <= 0
	    $health -= rand(5...10)
	  end


	  if $hearty <= 50 or $waterfull <= 50 or $peppiness <= 50 or $morale <= 50

	  	$h4 = '😿'

	  end
	  if $hearty > 50 or $waterfull  > 50 or $peppiness  > 50 or $morale > 50

	  	$h4 = '🐱'

	  end
	  if $health <= 0 

	    $p3 = "#{$cat_name} is dead. You are awful."
	    $h4 = '☠️'
	    $dead = true
	    #exit
	    erb :index
	  end

	end 

	def randomEvent (x)
	  case x
	  when 1
			$hearty -= rand(5...11)
			$waterfull -= rand(5...11)
			$health -= 5

			$p2 = "Ooops, that meal was unfit. #{$cat_name} has pucked on your karpet. Enjoy your cleaning. Give him smth another."

	  when 5
			$killingNature += rand(15...31)
			$hearty += rand(6...13)
			$morale += rand(6...13)

			$p2 = "Your #{$cat_name} has caught something. Its not a wasted day"

	  when 6 
	    $morale -= rand(6...13)

	    $p2 = "So this is a hunter..#{$cat_name} got nothing to eat. You should help your loser"

	  when 8
	    fight
	  when 9
	 	$morale += rand(6...21)

	 	$p2 = "#{$cat_name} met a lady cat. Let them be alone."

	  when 10	
	 	guest
	  when 11
	    fight
	  when 12

	 	$health -= rand(10...46)
	 	$waterfull -= rand(1...21)
	 	$peppiness -= rand(1...21)

	 	$p2 = "#{$cat_name} got cold. its not good. You used antibiotics and drugs to made him feel good himself"

	  else 

	    $p2 = 'Nothing has happened'

	  end

	end

	def statusCheck
      $h2 = 'Status'

	  case $health
	  when (0...26)
	  
	  $list_item_1 = "Your #{$cat_name} is getting dead! You must do smth!"
	  when  (26...76)
	  
	  $list_item_1 = "Health your #{$cat_name} is normal. But can be better"
	  when (76..101)
	 
	  $list_item_1 = "Your #{$cat_name} has excellent health"
	  else 
	  
	  $list_item_1 = 'Heals points are out' 
	  end

	  case $hearty 
	  when (0...26)
	  
	  $list_item_2 = "HEARTY: #{$cat_name} dies by hunger. Do smth! "
	  when  (26...76)
	   
	  $list_item_2 = "Your  #{$cat_name} is feeling hunger "
	  when (76...101)
	  
	  $list_item_2 = "Your #{$cat_name} is not hungry "
	  when (101..125)
	  
	  $list_item_2 = "Your cat eat to much! #{$cat_name} could die by overeating!"
	  else 
	  
	  $list_item_2 = 'dying...'
	  end 

	  case $peppiness 
	  when (0..25)
	  
	  $list_item_3 = "#{$cat_name} has not been slept for a long time. Let him rest! "
	  when  (26...76)
	   
	  $list_item_3 = "Your  #{$cat_name} is loocked tired."
	  when (76...101)
	  
	  $list_item_3 = "Your #{$cat_name} dont wanna sleep. "
	  when (101..150)
	  
	  $list_item_3 = "#{$cat_name} to lazy. Move it."
	  else 
	  
	  $list_item_3 = 'dying...'
	  end

	  case $killingNature
	  when (0...26)
	  
	  $list_item_4 = "#{$cat_name} feels useless itself. Let him hunt smth!" 
	  when  (26...76)
	  
	  $list_item_4 =  "#{$cat_name} is feeling bored itself."
	  when (76...101)
	  
	  $list_item_4 = " #{$cat_name} walks like dominator."
	  when (101..125)
	  
	  $list_item_4 = "Your cat getting agressive. #{$cat_name} its may be a trouble."
	  else 
	  
	  $list_item_4 = 'dying...'
	  end

	  case $waterfull
	  when (0...26)
	  
	  $list_item_5 = "#{$cat_name} feels thirst. Give him water!"  	
	  when  (26...76)
	  
	  $list_item_5 = "Your #{$cat_name} is feeling thirst a bit. "
	  when (76...101)
	 
	  $list_item_5 = "Your #{$cat_name} dont need a water."
	  when (101..125)
	  
	  $list_item_5 = "Your cat drink to much. #{$cat_name} getting be huge."
	  else 
	  
	  end

	  case $morale
	  when (0...26)
	  
	  $list_item_6 = "#{$cat_name} feels bad. Play with him!"
	  when  (26...76)
	  
	  $list_item_6 = "#{$cat_name} have a good enough mood." 
	  when (76..101)
	  
	  $list_item_6 = "#{$cat_name} have a exellent mood. Funny cat."
	  else 
	 
	  $list_item_6 = 'dying...'
	  end

	  case $purity
	  when (0...26)
	 
    $list_item_7 = "#{$cat_name} looks like sludge. Would you like to clean your pet? "
	  when  (26...76)
	  
	  $list_item_7 = "Your #{$cat_name} dirty a bit."
	  when (76..124)
	  
	  $list_item_7 = "Your #{$cat_name} is clean enough."
	  else 
	  
	  $list_item_7 = 'dying...'
	  end

	 

	  $h3 = 'What happened'

	  turnsCounter
	end