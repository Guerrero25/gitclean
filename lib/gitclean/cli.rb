#!/usr/bin/ruby
require "optparse"

require_relative "script_options"
require_relative "git_commands"

module Gitclean
  class CLI
    #
    # Return a structure describing the options.
    #
    def parse(args)
      # The options specified on the command line will be collected in
      # *options*.
      @options = ScriptOptions.new

      @args = OptionParser.new do |parser|
        @options.define_options(parser)
        parser.parse!(args)
      end

      @options
    end

    def run()
      branches = get_git_branches - @options.exemptions

      delete_git_branches(branches)

      puts "Branches were cleaned up - #{branches.size} deleted"
    end

    attr_reader :parser, :options
  end  # class GitClean
end
