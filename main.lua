-- bootstrap the compiler (https://fennel-lang.org/setup#embedding-fennel)
_G.fennel = require("lib.fennel")
table.insert(package.loaders, fennel.make_searcher({
	correlate=true -- try to match line numbers for stack trace
}))

-- simple pretty print function
_G.pp = function(x)
	print(fennel.view(x))
end

-- here would be a good place to load more potent standard library
-- _G.lume = require("lib.lume")

require("game")
