require 'zlib'
require 'oj'
require 'fileutils'
require 'pathname'
require 'optparse'
require 'ruby-progressbar'
require_relative 'oj/hashable'
require_relative 'rgss'
require_relative 'script_transform'
require_relative 'map_info_transform'
require_relative 'export'
require_relative 'import'

module Rxdata
  EXT = '.rxdata'
end

command = ARGV.shift
case command
when 'import'
  path = ARGV.shift
  if path
    if !File::ALT_SEPARATOR.nil?
      path = path.gsub(File::ALT_SEPARATOR, File::SEPARATOR)
    end
    if !Dir.glob("#{path}#{File::SEPARATOR}*.rvproj2").empty?
      Rxdata::EXT = ".rvdata2"
      RPG.module_eval { remove_const :State }
      class RPG::State < RPG::BaseItem ; end 
    end
    importer = Rxdata::Importer.new(path)
    importer.import
  end
when 'export'
  path = ARGV.shift
  if path
    Oj.default_options = { indent: 2, mode: :compat }
    if !File::ALT_SEPARATOR.nil?
      path = path.gsub(File::ALT_SEPARATOR, File::SEPARATOR)
    end
    if !Dir.glob("#{path}#{File::SEPARATOR}*.rvproj2").empty?
      Rxdata::EXT = ".rvdata2"
      RPG.module_eval { remove_const :State }
      class RPG::State < RPG::BaseItem ; end 
    end
    exporter = Rxdata::Exporter.new(path)
    exporter.export
  end
when 'clean'
  path = ARGV.shift
  if path
    if !File::ALT_SEPARATOR.nil?
      path = path.gsub(File::ALT_SEPARATOR, File::SEPARATOR)
    end
    if !Dir.glob("#{path}#{File::SEPARATOR}*.rvproj2").empty?
      Rxdata::EXT = ".rvdata2"
      RPG.module_eval { remove_const :State }
      class RPG::State < RPG::BaseItem ; end 
    end
    FileUtils.rm_r(path, force: true, secure: true) if Dir.exist?(path)
    FileUtils.mkdir_p(path)
  end
end
