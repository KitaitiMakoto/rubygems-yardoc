require 'rubygems/commands/yardoc_command'

Gem::CommandManager.instance.register_command :yardoc

Gem.post_install do |installer|
  next unless installer.options[:document].include? 'yardoc'
  next if File.exist? installer.spec.doc_dir('yardoc')
  YARD::Registry.clear
  Gem::Commands::YardocCommand.run_yardoc(installer.spec)
end

Gem.pre_uninstall do |uninstaller|
  FileUtils.rm_rf uninstaller.spec.doc_dir('yardoc')
end
