require 'mount_point/version'
require 'mount_point/errors'

module MountPoint
  raise RailsNotDefined, 'MountPoint requires Rails' unless defined?(Rails)

  require_relative 'mount_point/railtie'
end
