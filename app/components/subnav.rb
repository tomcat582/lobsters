# frozen_string_literal: true

class Components::Subnav < Components::Base
	include Phlex::Rails::Helpers::ContentFor

	register_output_helper :link_to_different_page

  def view_template(&)
    content_for(:subnav, &)
  end

  def item(text, path)
  	link_to_different_page text, path
  end
end
