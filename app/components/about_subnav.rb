# frozen_string_literal: true

class Components::AboutSubnav < Components::Base
  def view_template
	  Subnav do |nav|
			nav.item 'About', about_path
			nav.item 'Chat', chat_path
			nav.item 'Stats', stats_path
			nav.item 'Hats', hats_path
	  end
  end
end
