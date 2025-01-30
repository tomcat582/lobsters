# frozen_string_literal: true

class Components::Subnav < Components::Base
	include Phlex::Rails::Helpers::Request
	include Phlex::Rails::Helpers::ContentFor

	#register_output_helper :link_to_different_page

  def view_template(&)
    content_for(:phlex_subnav) do
      header(id: "subnav", &)
    end
  end

  def item(href, &text)
    current = request.path.sub(/\/page\/\d+$/, "")
    # href.sub!(/\/page\/\d+$/, "")

    a(href:, class: [("current_page" if current == href)], &text)
  end
end
