return {
  version = "1.4",
  luaversion = "5.1",
  tiledversion = "1.4.1",
  orientation = "orthogonal",
  renderorder = "left-up",
  width = 42,
  height = 25,
  tilewidth = 64,
  tileheight = 64,
  nextlayerid = 5,
  nextobjectid = 11,
  properties = {},
  tilesets = {
    {
      name = "arena_64",
      firstgid = 1,
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 26,
      image = "res/arena_64.png",
      imagewidth = 1664,
      imageheight = 1664,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      terrains = {},
      tilecount = 676,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 42,
      height = 25,
      id = 4,
      name = "deco",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 424, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 553, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 462, 551, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 551, 0, 0, 0, 369, 0, 0, 0, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 15, 0, 0, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 373, 0, 0, 0, 0, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 373, 0, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 292, 551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 466, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 507, 0, 80, 1610612816, 3221225552, 2684354640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 508, 0, 80, 2684354640, 3221225552, 1610612816, 0, 80, 2147483728, 0, 0, 0, 0, 371, 0, 0, 0, 0, 336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 508, 0, 0, 0, 0, 0, 0, 80, 1073741904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 336, 0, 551, 0, 0, 0, 0, 0, 0, 551, 0, 493, 0, 0, 0, 0, 0, 0, 0,
        0, 371, 0, 0, 373, 505, 547, 369, 0, 467, 0, 0, 0, 0, 0, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 42,
      height = 25,
      id = 1,
      name = "ground",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collider"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 267, 268, 268, 259, 259, 259,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 267, 268, 260, 259, 259, 259,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 267, 268, 268, 259, 259, 259,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 3758096600, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 267, 268, 268, 260, 259, 259,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 267, 260, 268, 259, 259, 259,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 267, 268, 268, 259, 259, 259,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 267, 260, 268, 259, 259, 259,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 297, 1610613003, 1610613003, 260, 259, 259,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 323, 173, 0, 265, 259, 259,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 323, 177, 0, 265, 259, 259,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2147483857, 220, 220, 220, 220, 220, 220, 220, 220, 1610612954, 205, 205,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612951, 1073742044, 1073742044, 3221225692, 3221225690, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 2147483864, 220, 220, 220, 220, 220, 217, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 0, 212, 213, 213, 213, 213, 214, 0, 0, 0, 0, 0, 0, 0, 0, 1610612951, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 1073742044, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354780, 209, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2147483857, 220, 2684354780, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 212, 213, 213, 213, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612951, 218, 220, 220, 220, 220, 209, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 442, 443, 443, 444, 445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2147483857, 1610612956, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 220, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 220, 216, 205, 218, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612956, 205, 205, 205, 205, 205, 205,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 215, 216, 205, 205, 205, 205, 218, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 2147483866, 205, 205, 205, 205, 205, 205,
        220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 221, 329, 329, 329, 2147483869, 220, 216, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205,
        205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 327, 327, 327, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 1,
          name = "box",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 1280,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 330,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "sword",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 1280,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 544,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "switch",
          type = "",
          shape = "rectangle",
          x = 1472,
          y = 768,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 317,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "key",
          type = "",
          shape = "rectangle",
          x = 1600,
          y = 1024,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 288,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "player",
          type = "entity",
          shape = "rectangle",
          x = 128,
          y = 1472,
          width = 64,
          height = 54,
          rotation = 0,
          gid = 0,
          visible = true,
          properties = {
            ["cameraTarget"] = true
          }
        },
        {
          id = 7,
          name = "skull",
          type = "entity",
          shape = "rectangle",
          x = 448,
          y = 832,
          width = 64,
          height = 54,
          rotation = 0,
          gid = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "skull",
          type = "entity",
          shape = "rectangle",
          x = 320,
          y = 1152,
          width = 64,
          height = 54,
          rotation = 0,
          gid = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "skull",
          type = "entity",
          shape = "rectangle",
          x = 2112,
          y = 640,
          width = 64,
          height = 54,
          rotation = 0,
          gid = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "skull",
          type = "entity",
          shape = "rectangle",
          x = 1920,
          y = 1408,
          width = 64,
          height = 54,
          rotation = 0,
          gid = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
