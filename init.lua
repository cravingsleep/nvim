-- The commits of the packages which are dependencies of multiple packages.
-- By keeping them here we can ensure the same one is used for all the
-- packages that need it. Also means it can be updated in one place only.
_G.DepsCommits = {
  devicons = 'b8221e42cf7287c4dcde81f232f58d7b947c210d',
  plenary = 'b9fd5226c2f76c951fc8ed5923d85e4de065e509',
  bufonite = '0e002eee32367fbd9f3f122246376cefee455a28',
}

require('config.lazy')
