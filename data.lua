local util = require("data-util")

require("prototypes/categories")

if util.me.enable() then
  if util.me.carbon() == "coke" and mods["SpaceG"] then require("prototypes/entity/coke-plant") end
  require("prototypes/coke")
  require("prototypes/foundry")
  require("prototypes/entity/foundry")
  require("prototypes/entity/electric-foundry")
end
