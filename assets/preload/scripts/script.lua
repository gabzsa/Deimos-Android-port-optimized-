local campointx = 0
local campointy = 0
local bfturn = false
local camMovement = 19
local velocity = 1.5
function onMoveCamera(focus)
	if focus == 'boyfriend' then
	campointx = getProperty('camFollow.x')
	campointy = getProperty('camFollow.y')
    setProperty('cameraSpeed', 1.73)
	bfturn = true
	elseif focus == 'dad' then
	campointx = getProperty('camFollow.x')
    campointy = getProperty('camFollow.y')
	bfturn = false
	setProperty('cameraSpeed', 1.73)
	end
end
function goodNoteHit(id, direction, noteType, isSustainNote)
    if bfturn then
        if direction == 0 then
            setProperty('camFollow.x', campointx - camMovement)
        elseif direction == 1 then
            setProperty('camFollow.y', campointy + camMovement)
        elseif direction == 2 then
            setProperty('camFollow.y', campointy - camMovement)
        elseif direction == 3 then
            setProperty('camFollow.x', campointx + camMovement)
        end
        setProperty('cameraSpeed', velocity)
    end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)

    if not bfturn then
        if direction == 0 then
            setProperty('camFollow.x', campointx - camMovement)
        elseif direction == 1 then
            setProperty('camFollow.y', campointy + camMovement)
        elseif direction == 2 then
            setProperty('camFollow.y', campointy - camMovement)
        elseif direction == 3 then
            setProperty('camFollow.x', campointx + camMovement)
        end
        setProperty('cameraSpeed', velocity)
    end
end
function onCreatePost()
    they = getProperty('iconP1.y')
    the2y = getProperty('iconP2.y')
end

function fuckingbop()
    scaleObject('iconP1',1.35,1.35)
    doTweenY('icona1','iconP1',they,0.5,'circOut')
    setProperty('iconP1.y',they + 15)
end
function onBeatHit()
    if curBeat % 1 == 0 then
        fuckingbop()
    end
end

function boundTo(value, min, max) return math.max(min, math.min(max, value)) end
function math.lerp(from,to,i) return from+(to-from)*i end
