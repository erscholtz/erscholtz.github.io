require "phlex"
require "fileutils"

require_relative "src/routing"

output_dir = File.join(__dir__, "dist")
pages = Routing.routes

pages.each do |path, component|
  directory = File.join(output_dir, path)
  FileUtils.mkdir_p(directory)
  File.write(File.join(directory, "index.html"), component.call)
end

FileUtils.cp_r(File.join(__dir__, "assets"), output_dir)
