local net = require("net")
local gopher = require("gopher")

local server = net.createServer(function(client)
    client:on("data",function(data)
        local url = data:sub(0,-3)
        if data == "\r\n" or data == "/\r\n" then
            url = "/home"
        end

        local page = loadfile("./public"..url..".lua")
        p(url)
        if page then
            client:write(page().run(url))
        else
            client:write(gopher.item("3","Page at \"".. url .."\" missing!")..".\r\n")
        end
        
        client:shutdown()
    end)
end)

server:listen(7070)
