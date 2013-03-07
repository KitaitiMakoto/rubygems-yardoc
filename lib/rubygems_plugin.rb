require 'rubygems/command_manager'
require 'rubygems/install_update_options'
require 'rubygems/commands/yardoc_command'

Gem::CommandManager.instance.register_command :yardoc

module Gem::InstallUpdateOptions
  alias install_update_options_without_yardoc add_install_update_options
  def add_install_update_options
    install_update_options_without_yardoc

    add_option 'Install/Update', '--yardoc', 'Generate YARD documentation for installed gems' do |value, option|
      unless options[:document].include? 'yardoc'
        options[:document] << 'yardoc'

        Gem.post_install do |installer|
          YARD::Registry.clear
          Gem::Commands::YardocCommand.run_yardoc(installer.spec)
        end
      end
    end
  end
end

Gem.pre_uninstall do |uninstaller|
  FileUtils.rm_r File.join(uninstaller.spec.doc_dir, 'yardoc')
end
