local setmetatable = setmetatable

local _M = require('apicast.policy').new('Test', '1.0')
local mt = { __index = _M }

function _M.new()
  return setmetatable({}, mt)
end

function _M:init()
  ngx.log(ngx.ERR, '========> ', ngx.get_phase())
end

function _M:init_worker()
  ngx.log(ngx.ERR, '========> ', ngx.get_phase())
end

function _M:rewrite()
  ngx.log(ngx.ERR, '========> ', ngx.get_phase())
end

function _M:access()
  ngx.log(ngx.ERR, '========> ', ngx.get_phase())
end

function _M:content()
  ngx.log(ngx.ERR, '========> ', ngx.get_phase())
end

function _M:post_action()
  ngx.log(ngx.ERR, '========> ', ngx.get_phase())
end

function _M:header_filter()
  ngx.log(ngx.ERR, '========> ', ngx.get_phase())
end

function _M:body_filter()
  ngx.log(ngx.ERR, '========> ', ngx.get_phase())
end

function _M:log()
  ngx.log(ngx.ERR, '========> ', ngx.get_phase())
end

function _M:balancer()
  ngx.log(ngx.ERR, '========> ', ngx.get_phase())
end

return _M
