# We do two things here:
require 'fileutils'

require 'rbconfig'
Config = RbConfig unless defined?(Config)
# First, generate include files and preambles
system "#{Config.ruby} misc/mk_tioga_sty.rb"

if Config::CONFIG["target"] =~ /darwin/i
  File.open("bin/repreview", 'w') do |f|
    f.puts '#!/bin/sh'
    f.puts "osascript #{Config::CONFIG['bindir']}/Reload_Preview_Document.scpt $*"
  end
  FileUtils.copy("misc/Reload_Preview_Document.scpt", "bin")
else
  puts "Skipping MacOS-specific files"
end
