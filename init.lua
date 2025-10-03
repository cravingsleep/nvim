-- The commits of the packages which are dependencies of multiple packages.
-- By keeping them here we can ensure the same one is used for all the
-- packages that need it. Also means it can be updated in one place only.
_G.DepsCommits = { 
	devicons = "b8221e42cf7287c4dcde81f232f58d7b947c210d"
}

require("config.lazy")

