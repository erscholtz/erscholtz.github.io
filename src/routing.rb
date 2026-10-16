require "phlex"

require_relative "pages/home"
require_relative "pages/projects"

module Routing
  def self.routes
    {
      "" => HomePage.new,
      "projects" => ProjectsPage.new
    }
  end
end
