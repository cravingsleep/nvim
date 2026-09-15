-- The commits of the packages which are dependencies of multiple packages.
-- By keeping them here we can ensure the same one is used for all the
-- packages that need it. Also means it can be updated in one place only.
_G.DepsCommits = {
  devicons = '2ae6958df7ced50baac5035cec0c15799eedfbf7',
  plenary = '74b06c6c75e4eeb3108ec01852001636d85a932b',
  bufonite = '0e002eee32367fbd9f3f122246376cefee455a28',
}

require('config.lazy')
