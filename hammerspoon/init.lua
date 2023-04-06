local hotkey = require('hs.hotkey')
local pathwatcher = require('hs.pathwatcher')
local notify = require('hs.notify')
local window = require('hs.window')

local hyper = {'alt', 'cmd', 'ctrl', 'shift'}

-- enable hammerspoon command line tool
hs.ipc.cliInstall()

-- Reload init.lua automatically on config changes
function reloadConfig(files)
  doReload = false
  for _,file in pairs(files) do
    if file:sub(-4) == '.lua' then
      doReload = true
    end
  end
  if doReload then
    hs.reload()
  end
end

-- Set paths to watch for changes
pathwatcher.new(os.getenv('HOME') .. '/.hammerspoon/', reloadConfig):start()
notify.new({
  title='Hammerspoon',
  informativeText='Why a spoon, cousin? Why not an axe?'
}):send()

-- Disable animations
window.animationDuration = 0

-- Enter modal with hyper-return, exit with just return
local windowMode = hotkey.modal.new(hyper, 'return')
windowMode:bind({}, 'return', function()
  windowMode:exit()
end)


-- Show notification when in window mode
local windowModeNotification = notify.new({
  title='Hammerspoon',
  informativeText='Window Mode',
  withdrawAfter=0
})

windowMode.entered = function() 
  windowModeNotification:send()
end

windowMode.exited = function()
  windowModeNotification:withdraw()
end

-- set where to move window and what size
-- x-position, y-position, width, height where 1 = screen size
-- x and y-position are from 0 (top left) to 1 (bottom right)
-- width and height are from 0 (minimum size) to 1 (maximum size)
function moveWindow(x, y, w, h)
  return function()
    local win = window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w * x)
    f.y = max.h * y
    f.w = max.w * w
    f.h = max.h * h
    win:setFrame(f)  
  end
end

-- Full screen
windowMode:bind({}, 'k', moveWindow(0, 0, 1, 1))

-- 1/2 width, left
windowMode:bind({}, 'j', moveWindow(0, 0, 1/2, 1))
-- 1/2 width, right
windowMode:bind({}, 'l', moveWindow(1/2, 0, 1/2, 1))

-- 2/3 width, left
windowMode:bind({}, 'u', moveWindow(0, 0, 2/3, 1))
-- 2/3 width, center
windowMode:bind({}, 'i', moveWindow(1/6, 0, 2/3, 1))
-- 2/3 width, right
windowMode:bind({}, 'o', moveWindow(1/3, 0, 2/3, 1))

-- 1/3 width, left
windowMode:bind({}, '7', moveWindow(0, 0, 1/3, 1))
-- 1/3 width, center
windowMode:bind({}, '8', moveWindow(1/3, 0, 1/3, 1))
-- 1/3 width, right
windowMode:bind({}, '9', moveWindow(2/3, 0,  1/3, 1))

-- 1/4 width, left
windowMode:bind({}, 'q', moveWindow(0, 0, 1/4, 1))
-- 1/4 width, center-left
windowMode:bind({}, 'w', moveWindow(1/4, 0,  1/4, 1))
-- 1/4 width, center-double-width
windowMode:bind({}, 'e', moveWindow(1/4, 0,  2/4, 1))
-- 1/4 width, center-right
windowMode:bind({}, 'r', moveWindow(2/4, 0, 1/4, 1))
-- 1/4 width, right
windowMode:bind({}, 't', moveWindow(3/4, 0, 1/4, 1))

-- 1/2 width, 1/2 height, upper-left
windowMode:bind({}, 'a', moveWindow(0, 0,  1/2, 1/2))
-- 1/2 width, 1/2 height, upper-right
windowMode:bind({}, 's', moveWindow(1/2, 0,  1/2, 1/2))
-- 1/2 width, 1/2 height, lower-left
windowMode:bind({}, 'z', moveWindow(0, 1/2, 1/2, 1/2))
-- 1/2 width, 1/2 height, lower-right
windowMode:bind({}, 'x', moveWindow(1/2, 1/2, 1/2, 1/2))

-- Move to right screen
windowMode:bind({}, 'Right', function()
  window.focusedWindow():moveOneScreenEast()
end)

-- Move to left screen
windowMode:bind({}, 'Left', function()
  window.focusedWindow():moveOneScreenWest()
end)
