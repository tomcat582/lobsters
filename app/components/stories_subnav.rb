# frozen_string_literal: true

class Components::StoriesSubnav < Components::Base
  def view_template
    Subnav do |nav|
      nav.item(newest_path) { 'Newest' }
      nav.item(top_path) { 'Top' }
    end
  end
end
