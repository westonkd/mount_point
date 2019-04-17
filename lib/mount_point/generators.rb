require 'json'

module MountPoint
  module Generators
    def mount_point(component_name, props: {}, as: :div)
      content_tag(
        as,
        '',
        'id' => "#{component_name}_mount_point",
        'data-props' => props.to_json
      )
    end
  end
end