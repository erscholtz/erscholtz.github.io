class ProjectsPage < Phlex::HTML
  def view_template
    doctype

    html(lang: "en") do
      head do
        meta(charset: "utf-8")
        meta(name: "viewport", content: "width=device-width, initial-scale=1")
        title { "erscholtz" }
        link(rel: "preload", href: "/assets/fonts/libron/Libron-Regular.ttf", as: "font", type: "font/ttf", crossorigin: "anonymous")
        link(rel: "stylesheet", href: "/assets/css/style.css")
      end

      body do
        main(class: "page") do
          h1 { "Projects" }
          p { "These are my projects" }
        end
      end
    end
  end
end
