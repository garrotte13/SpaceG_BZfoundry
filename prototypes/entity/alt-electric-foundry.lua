

data:extend({
    {
      type = "assembling-machine",
      name = "electric-foundry",
      fast_replaceable_group = "foundry",
      icon = "__bzfoundry__/graphics/entity/spaceg/foundry_el/smelter_icon.png",
      icon_size = 32,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.6, result = "electric-foundry"},
      max_health = 350,
      corpse = "medium-small-remnants",
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound = { filename = "__base__/sound/electric-furnace.ogg" }
      },
      resistances =
      {
        {
          type = "fire",
          percent = 90
        },
        {
            type = "impact",
            percent = 40
        },
      },
      collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
      selection_box = {{-2, -2}, {2, 2}},
      crafting_categories = {"founding"},
      energy_usage = "360kW",
      drain = "12kW",
      crafting_speed = 4,
      energy_source =
      {
        type = "electric",
        fuel_category = "chemical",
        effectivity = 1,
        emissions_per_minute = 2,
        usage_priority = "secondary-input",
      },
      module_specification =
      {
        module_slots = 3,
        module_info_icon_shift = {0, 0.8}
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      animation =
      {
        layers =
        {
          {
            filename = "__bzfoundry__/graphics/entity/spaceg/foundry_el/smelter_sheet.png",
            priority = "medium",
            width = 256,
            height = 256,
            frame_count = 36,
            line_length = 6,
            shift = {0.5, -0.8},
            scale = 0.6,
            animation_speed=0.1666667,
          },
        }
      },

  
    },
  
  })