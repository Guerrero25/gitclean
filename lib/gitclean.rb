require "gitclean/version"
require "gitclean/cli"

git_clean = Gitclean::CLI.new
git_clean.parse(ARGV)

git_clean.run
