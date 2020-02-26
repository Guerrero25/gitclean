require_relative "version"

module Gitclean
  class ScriptOptions
    attr_accessor :exemptions

    def initialize
      self.exemptions = ["master", "develope", "staging"]
    end

    def define_options(parser)
      parser.banner = "Usage: gitclean [options]"
      parser.separator ""
      parser.separator "Specific options:"

      # add additional options
      exemption_list_option(parser)

      parser.separator ""
      parser.separator "Common options:"
      # No argument, shows at tail.  This will print an options summary.
      # Try it and see!
      parser.on_tail("-h", "--help", "Show this message") do
        puts parser
        exit
      end
      # Another typical switch to print the version.
      parser.on_tail("--version", "Show version") do
        puts "Gitclean CLI version #{VERSION}"
        exit
      end
    end

    def exemption_list_option(parser)
      # List of arguments.
      parser.on("--exemption x,y,z", Array, "Items which should not be deleted") do |list|
        self.exemptions = list
      end
    end
  end
end
