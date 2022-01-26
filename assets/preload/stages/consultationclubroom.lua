function onCreate()
	--background bo

	makeLuaSprite( 'back2', 'clubfarbg', 0, 0)
	setLuaSpriteScrollFactor('back2', 0.6, 0.6)
	scaleObject('back2', 1.6, 1.6)
	addLuaSprite('back2', false)

	makeLuaSprite( 'stage2', 'bsodclubroom', 0, 0)
	setLuaSpriteScrollFactor('stage2', 0.6, 0.6)
	scaleObject('stage2', 1.6, 1.6)
	addLuaSprite('stage2', false)

	makeLuaSprite( 'stage1', 'clubroom1', 0, 0)
	setLuaSpriteScrollFactor('stage1', 0.6, 0.6)
	scaleObject('stage1', 1.6, 1.6)
	addLuaSprite('stage1', false)

	makeAnimatedLuaSprite('bsod','BSOD',0,0)
	scaleObject('bsod', 1, 1)
	addAnimationByPrefix('bsod','idle','bluescreen',24,true)
	objectPlayAnimation('bsod','idle',false)
	setScrollFactor('bsod', 0, 0);
	addLuaSprite('bsod', false)

	makeLuaSprite('desk1', 'DesksFront', 0, 0)
	setLuaSpriteScrollFactor('desk1', 0.7, 0.6)
	scaleObject('desk1', 1.6, 1.6)
	addLuaSprite('desk1', true)

	makeLuaSprite('desk2', 'bsoddesk', 0, 0)
	setLuaSpriteScrollFactor('desk2', 0.7, 0.6)
	scaleObject('desk2', 1.6, 1.6)
	addLuaSprite('desk2', true)



	setProperty('stage2.visible', false)
	setProperty('desk2.visible', false)
	setProperty('bsod.visible', false)

end

function onEvent(name,value1,value2)
	if name == 'Change Main BG' then

		if value1 == '2' then
		setProperty('stage2.visible', true)
		setProperty('desk2.visible', true)
		setProperty('bsod.visible', true)
		setProperty('stage1.visible', false)
		setProperty('desk1.visible', false)

		end


		if value1 == '1' then
		setProperty('stage2.visible', false)
		setProperty('desk2.visible', false)
		setProperty('bsod.visible', false)
		setProperty('stage1.visible', true)
		setProperty('desk1.visible', true)

		end
	end
end
