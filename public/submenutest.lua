local page = {}
local gopher = require("../gopher")

page.run = function()
    return gopher.item("i", "This is a test submenu!") ..
           gopher.item("i", "Cool, isn't it?") ..
           ".\r\n"
end

return page
