require 'rubygems/package'
require 'rubygems/command'
require 'shellwords'
require 'yard'

class Gem::Commands::YardocCommand < Gem::Command
  def initialize
    super 'yardoc', 'Generate YARD documentation for specified gems'
  end

  def arguments # :nodoc:
    'GEMNAME [GEMNAME ...] gem to generate YARD documentation'
  end

  def usage # :nodoc:
    "gem #{command} #{arguments}"
  end

  def execute
    gemnames = get_all_gem_names
    gemnames.each do |gemname|
      gemspec = Gem::Specification.find_by_name(gemname)
      yardoc_dir = File.join(gemspec.doc_dir, 'yardoc')
      Dir.chdir gemspec.gem_dir do
        YARD::CLI::Yardoc.run '--output-dir', yardoc_dir
      end
    end
  end
end
