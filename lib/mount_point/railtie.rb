require 'mount_point/generators'

module MountPoint
  class Railtie < Rails::Railtie
    initializer "mount_point.generators" do
      ActiveSupport.on_load(:action_view){ include MountPoint::Generators }
    end
  end
end