function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('black');
end

function onEvent(name, value1, value2)
    if name == "DodgeEvent" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
	makeAnimatedLuaSprite('black', 'black', 420, 200);
    luaSpriteAddAnimationByPrefix('black', 'black', 'black', 25, true);
	luaSpritePlayAnimation('black', 'black');
	setObjectCamera('black', 'other');
	scaleLuaSprite('basck', 0.4, 0.4); 
    addLuaSprite('black', true); 
	
	--Set values so you can dodge
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('accept') then
   
   Dodged = true;
   
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('A');
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'Died' and Dodged == true then
   characterPlayAnim('boyfriend', 'dodge', true);
   Dodged = false
   
   end
end