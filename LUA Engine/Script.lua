goneDown = false;
hasrope = false;

function story(aName)
	if(aName == "start") then
		playMusic("background.wav")
		setBackground("basement.jpg")
		createTextfield("You found yourself in a dungeon, there is an opening at the bottom")
		createButton("exit", "You think to yourself that death is the only way out")
		createButton("enter", "You think it would be a good idea to descend")
	end
	if(aName == "enter") then
		if(goneDown == false) then
			playSound("climbingDown.wav")
			goneDown = true;
		else
			playSound("scream.wav")
		end
		CLS();
		setBackground("cavesystem.jpg");
		playSound("footstep.wav");
		createTextfield("you found yourself in a cave, it's very cold")
		createButton("leftTunnel", "explore in the left direction!");
		createButton("rightTunnel", "explore in the right direction")
	end
	if(aName == "leftTunnel")then
		playSound("footstep.wav")
		CLS();
		setBackground("leftTunnel.jpg")

		if(hasrope == true)then
			createTextfield("You mount your rope ready to descend")
			createButton("trail", "go down to the trail");
		else
		createTextfield("you found a mountain pass ahead of you \nyou lack any means to descend downwards");
		createButton("enter", "go back")
		end
	end
	if(aName == "rightTunnel")then
		playSound("door.wav")
		CLS();
		setBackground("rightTunnel.jpg")
		if(hasrope == false) then
			createTextfield("You stumled upon a rare portrait of god himself.\nThere is something shining on the floor")
			createButton("enter", "Turn around and ignore what you just saw")
			createButton("pickup", "Pick up the item")
			else
			createTextfield("you offer your prayers to god ")
			createButton("enter", "go back")
		
		end
	end
	if(aName == "pickup")then
		hasrope = true;
		CLS();
		createTextfield("On the shining floor you found a golden rope")
		createButton("enter", "go back from to the tunnel out of fear")
	end
	if(aName == "trail")then
		playMusic("lavendertown.wav")
		playSound("climbingDown.wav")
		CLS();
		setBackground("trail.jpg")
		createTextfield("you found a way down but you were greeted \n with two people frozen in time")
		createButton("oldtown", "go in the direction they were running from")
	end
	if(aName == "oldtown") then
		playSound("footstep.wav")
		CLS();
		setBackground("bobross.jpg")
		createTextfield("You found the meaning of life")
		createButton("trail", "repent and go back to the trail")
		createButton("exit", "Become a happy little accident")
	end
	if(aName == "exit") then
		playSound("scream.wav");
		exitGame();
	end
end