require("util")


local smoke_burner = {}

local smoke_position_a = {-0.58, -0.85}
local smoke_position_b = {-0.58, -1.45}
local smoke_position_c = {-0.58, -2.05}
smoke_burner[1] = {}
smoke_burner[1].name = "apm_dark_smoke"
smoke_burner[1].deviation = {0.1, 0.1}
smoke_burner[1].frequency = 5
smoke_burner[1].north_position = smoke_position_a
smoke_burner[1].south_position = smoke_position_a
smoke_burner[1].east_position = smoke_position_a
smoke_burner[1].west_position = smoke_position_a
smoke_burner[1].starting_vertical_speed = 0.09
smoke_burner[1].starting_frame_deviation = 60
smoke_burner[1].slow_down_factor = 1
smoke_burner[2] = {}
smoke_burner[2].name = "apm_dark_smoke"
smoke_burner[2].deviation = {0.1, 0.1}
smoke_burner[2].frequency = 7
smoke_burner[2].north_position = smoke_position_b
smoke_burner[2].south_position = smoke_position_b
smoke_burner[2].east_position = smoke_position_b
smoke_burner[2].west_position = smoke_position_b
smoke_burner[2].starting_vertical_speed = 0.08
smoke_burner[2].starting_frame_deviation = 64
smoke_burner[2].slow_down_factor = 1
smoke_burner[3] = {}
smoke_burner[3].name = "apm_dark_smoke"
smoke_burner[3].deviation = {0.1, 0.1}
smoke_burner[3].frequency = 6
smoke_burner[3].north_position = smoke_position_c
smoke_burner[3].south_position = smoke_position_c
smoke_burner[3].east_position = smoke_position_c
smoke_burner[3].west_position = smoke_position_c
smoke_burner[3].starting_vertical_speed = 0.07
smoke_burner[3].starting_frame_deviation = 68
smoke_burner[3].slow_down_factor = 1


data:extend({
{
    type = "assembling-machine",
    name = "coking-plant",
    icon = "__bzfoundry__/graphics/icons/spaceG/apm_coking_plant_2.png",
    icon_size = 128,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "coking-plant", count = 1},
    resistances = {{type = "impact", percent = 40},{type = "fire",percent = 90}},
    max_health = 300,
    crafting_categories = {"coking"},
    crafting_speed = 2,
    source_inventory_size = 1,
    show_recipe_icon = false,
    fixed_recipe = "coke",
    create_ghost_on_death = true,
    corpse = "medium-remnants",
    light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume=0.43 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.43 },
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg", volume = 0.8}
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allow_copy_paste = true,
    energy_usage = "180KW",
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 9,
      smoke = smoke_burner
      --[[{
        {
          name = "apm_dark_smoke",
          deviation = {0.1, 0.1},
          frequency = 10,
          position = nil,
          north_position = {-0.65, -2.05},
          south_position = {-0.65, -2.05},
          east_position = {-0.65, -2.05},
          west_position = {-0.65, -2.05},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60,
          slow_down_factor = 1
        }
      }
              --]]
    },
    animation =
    {
    layers =
      {
        {
          filename = "__bzfoundry__/graphics/entity/spaceG/coking_plant_chem/coking_plant_2.png",
          priority = "high",
          line_length = 8,
          width = 160,
          height = 128,
          animation_speed = 0.133333335,

          frame_count = 16,
          shift = {0.4375, -0.28125},
          hr_version =
          {
            filename = "__bzfoundry__/graphics/entity/spaceG/coking_plant_chem/hr_coking_plant_2.png",
            priority = "high",
            line_length = 8,
            width = 320,
            height = 256,
            animation_speed = 0.133333335,

            frame_count = 16,
            shift = {0.4375, -0.28125},
            scale = 0.5
          }
        },
    
      
        {
          filename = "__bzfoundry__/graphics/entity/spaceG/coking_plant_chem/coking_plant_shadow.png",
          line_length = 8,
          priority = "high",
          draw_as_shadow = true,
          width = 160,
          height = 128,
          animation_speed = 0.133333335,
          shift = {0.4375, -0.28125},
          frame_count = 16,
          hr_version =
          {
            filename = "__bzfoundry__/graphics/entity/spaceG/coking_plant_chem/hr_coking_plant_shadow.png",
            priority = "high",
            draw_as_shadow = true,
            line_length = 8,
            width = 320,
            height = 256,
            animation_speed = 0.133333335,
            apply_projection = false,
            frame_count = 16,
            shift = {0.4375, -0.28125},
            scale = 0.5
          }
        }
      
    }
  },
  idle_animation =
  {
    layers =
    {
            {
              filename = "__bzfoundry__/graphics/entity/spaceG/coking_plant_chem/coking_plant_idle_2.png",
              priority = "high",
              line_length = 8,
              width = 160,
              height = 128,
              animation_speed = 0.133333335,
    
              frame_count = 16,
              shift = {0.4375, -0.28125},
              hr_version =
              {
                filename = "__bzfoundry__/graphics/entity/spaceG/coking_plant_chem/hr_coking_plant_idle_2.png",
                priority = "high",
                line_length = 8,
                width = 320,
                height = 256,
                animation_speed = 0.133333335,
    
                frame_count = 16,
                shift = {0.4375, -0.28125},
                scale = 0.5
              }
            },
            {
                filename = "__bzfoundry__/graphics/entity/spaceG/coking_plant_chem/coking_plant_shadow.png",
                line_length = 8,
                priority = "high",
                draw_as_shadow = true,
                width = 160,
                height = 128,
                animation_speed = 0.133333335,
                shift = {0.4375, -0.28125},
                frame_count = 16,
                hr_version =
                {
                  filename = "__bzfoundry__/graphics/entity/spaceG/coking_plant_chem/hr_coking_plant_shadow.png",
                  priority = "high",
                  draw_as_shadow = true,
                  line_length = 8,
                  width = 320,
                  height = 256,
                  animation_speed = 0.133333335,
                  apply_projection = false,
                  frame_count = 16,
                  shift = {0.4375, -0.28125},
                  scale = 0.5
                }
              }
    }
  }
}

})