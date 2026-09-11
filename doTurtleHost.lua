local appName = "doTurtle"
local version = "1.0.0-alpha.01"

local commands = { -- Table of commands
  {name = "help",
    description = "Lists commands",
    func = function()
      for i,command in pairs(commands) do
        print(command.name .. " - " .. description)
      end
    end
  }
}

local function clear() -- Clears the screen
  term.clear()
  term.setCursorPos(1,1)
end

clear()
write(appName .. " " .. version)
term.setCursorPos(1,3)
write("Use 'help' for a list of commands")
term.setCursorPos(1, 5)

while true do
  write("> ")
  local input = read()
  for i,command in pairs(commands) do
    if command.name == input then
      command.func()
      return
    end
    print("Command not found!")
  end
end
