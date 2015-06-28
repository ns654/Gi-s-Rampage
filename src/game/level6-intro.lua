-----------------------------------------------------------------------------------------
--
-- level6-intro.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

local function levelIntro( sceneGroup )
    local sceneTitleText = display.newText{
        font="PressStart2P",
        fontSize=16,
        text="Level 6 - O pedido",
        x=display.contentWidth * 0.5,
        y=display.contentHeight * 0.5
    }

    sceneGroup:insert( sceneTitleText )
end

local function gotoNextLevel()
    composer.gotoScene( "game.level6", "fade", 500 )
end

---------------------------------------------------------------------------------
function scene:create( event )
    local sceneGroup = self.view

    levelIntro( sceneGroup )

    timer.performWithDelay( 2000, gotoNextLevel, 1 )
end

---------------------------------------------------------------------------------

scene:addEventListener( "create", scene )

---------------------------------------------------------------------------------

return scene
