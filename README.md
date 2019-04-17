# MountPoint

An (extremely) simple gem for creating JS component mount points.

MountPoint facilitates transferring data from a Rails controller to a JavaScript component by creating an intermediate DOM node that stores data in a `data-props` attribute.

MountPoint creates uniform DOM nodes to mount JavaScript components, but it _does not_ mount the components. To mount components to MountPoint nodes use [MountPoint Node package]() (Coming soon).

## Usage

### sample.html.erb:
```
<h1>Sample App</h1>

<%= mount_point('my_component_name', props: {foor: 'bar'}) %>
```

### Rendered result:
```
<html>
...
  <h1>Sample App</h1>
  <div id='my_component_mount_point' data-props='{\"foo\":\"bar\"}'></div>
...
</html>
```

The JavaScript component can then me mounted to the node. The `data-props` attribute may be parsed as component props.

MountPoint does not handle mounting the JavaScript component. To mount components to MountPoint nodes use [MountPoint Node package]() (Coming soon).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mount_point'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mount_point

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/westonkd/mount_point. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MountPoint project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/mount_point/blob/master/CODE_OF_CONDUCT.md).
