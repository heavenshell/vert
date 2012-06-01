package = "Vert"

version = "0.0.3-1"

source = { url    = "git://github.com/aconbere/vert.git"
         , branch = "subcommands"
         }

description = { summary = "Creates isolated development environment"
              , detailed = [[
                  Vert is a tool for building isolated development environments akin to
                  virtualenv in python. It handles compiling and install lua to a local
                  directory as well as setting up luarocks.
                ]]
              , license = "MIT/X11"
              , maintainer = "Anders Conbere <aconbere@gmail.com>"
              }

dependencies = { "lua == 5.1"
               , "luafilesystem"
               , "luasocket"
               }

build = { type = "builtin"
        , modules = { vert    = "./src/vert.lua" 
                    , optimal = "./src/optimal.lua"
                    , utils   = "./src/utils.lua"
                    }
        , install = { bin = { vert         = "src/vert.lua"
                            , vert_wrapper = "src/vert_wrapper.sh"
                            }
                    }
        }
