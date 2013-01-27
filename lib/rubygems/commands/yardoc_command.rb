require 'rubygems/package'
require 'rubygems/command'
require 'yard'

class Gem::Commands::YardocCommand < Gem::Command
  VERSION = '0.0.1'

  def initialize
    super 'yardoc', 'Generate YARD documentations for specified gems into doc directory'
  end

  def arguments # :nodoc:
    'GEMNAME [GEMNAME ...]       gem to generate YARD documentation'
  end

  def usage # :nodoc:
    "#{program_name} GEMNAME [GEMNAME ...]"
  end

  def execute
    get_all_gem_names.each do |name|
      spec = Gem::Specification.find_by_name(name)
      yardoc_dir = File.join(spec.doc_dir, 'yardoc')
      Dir.chdir spec.gem_dir do
        YARD::CLI::Yardoc.run '--output-dir', yardoc_dir
      end
    end
  end
end
