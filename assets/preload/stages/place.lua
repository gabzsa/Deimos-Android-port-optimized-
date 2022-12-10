function onCreate()
    makeLuaSprite('top', '', -500, -500);
    makeGraphic('top', 2000 ,500, '000000')
    addLuaSprite('top', true)
    setObjectCamera('top', 'camGame')
    setScrollFactor('top', 0, 0)

    makeLuaSprite('bottom', '', -500, 725);
    makeGraphic('bottom', 2000 ,500, '000000')
    addLuaSprite('bottom', true)
    setObjectCamera('bottom', 'camGame')
    setScrollFactor('bottom', 0, 0)

	makeLuaSprite('void', 'deimos/endless void', -1000, -400);
	setScrollFactor('void', 1, 1);
	scaleObject('void',1.2,1.2);
	addLuaSprite('void', false)

	makeAnimatedLuaSprite('body', 'deimos/grunt_body', 970, -25)
	scaleObject('body', 1, 1)
	addAnimationByPrefix('body','dance','grunt body idle instance',24,false)
    addLuaSprite('body', false)
	
	makeLuaSprite('bg', 'deimos/place', -545, -370);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg',0.9,0.9);
	addLuaSprite('bg', false)

	makeAnimatedLuaSprite('hand', 'deimos/grunt_hands', 930, 172)
	scaleObject('hand', 1, 1)
	addAnimationByPrefix('hand','dance','grunt hands instance',24,false)
    addLuaSprite('hand', false)

	objectPlayAnimation('body', 'dance');
	objectPlayAnimation('hand', 'dance');
end

function onCreatePost()
	setProperty('camZooming', true)
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('body', 'dance');
		objectPlayAnimation('hand', 'dance');
	end
end

function onCountdownTick(counter)
	if counter % 2 == 0 then
		objectPlayAnimation('body', 'dance');
		objectPlayAnimation('hand', 'dance');
	end
end