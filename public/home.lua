local page = {}
local gopher = require("../gopher")

page.run = function()
    return gopher.item("i", "A cool gopher test server!") ..
           gopher.item("0", "A text file test", "/hello") ..
           gopher.item("1", "A submenu on this gopher site!", "/submenutest") ..
           gopher.item("1", "This page!", "/home") .. 
           ".\r\n"
end

return page
