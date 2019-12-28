local gopher = {}

local defaulthost = "0.tcp.ngrok.io"
local defaultport = 10035

gopher.item = function(t,content,selector,host,port)
    if selector == nil then selector = "" end
    if host     == nil then host     = defaulthost end
    if port     == nil then port     = tostring(defaultport) end

    return t .. content .. "\t" .. selector .. "\t" .. host .. "\t" .. tostring(port) .. "\r\n"
end

gopher.run = function() return "iYou've been very naughty!\r\n.\r\n" end

return gopher
