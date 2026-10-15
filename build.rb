require "phlex"
require "fileutils"

class HomePage < Phlex::HTML
  def view_template
    doctype

    html(lang: "en") do
      head do
        meta(charset: "utf-8")
        meta(name: "viewport", content: "width=device-width, initial-scale=1")
        title { "erscholtz" }
      end

      body do
        main do
          h1 { "Hi, I'm Erik" }
          p { "Welcome to my personal site." }
        end
      end
    end
  end
end

FileUtils.mkdir_p("dist")
File.write("dist/index.html", HomePage.new.call)
