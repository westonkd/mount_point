# MountPoint

An (extremely) simple gem for creating JS component mount points.

MountPoint facilitates transferring data from a Rails controller to a JavaScript component by creating an intermediate DOM node that stores data in a `data-props` attribute.

MountPoint creates uniform DOM nodes to mount JavaScript components, but it _does not_ mount the components. To mount components to MountPoint nodes use [rails-mount-point Node package](https://www.npmjs.com/package/rails-mount-point).

## Usage

### sample.html.erb:

```
<%= javascript_pack_tag 'sample' %>
<h1>Sample App</h1>

# Typically the "props" hash would be created as a controller instance variable
<%= mount_point('my_component_name', props: {toWho: 'World'}) %>
```

MountPoint gem does not handle mounting the JavaScript component. To mount components to MountPoint nodes use [rails-mount-point Node package](https://www.npmjs.com/package/rails-mount-point):

### javascript/components/HelloWorld.js:

```
import React from "react";

const HelloWorld = props => {
  return <h1>Hello {props.toWho}</h1>;
};

export default Hello;
```

### javascript/packs/sample.js

```
import mount from "rails-mount-point";
import HelloWorld from "../components/HelloWorld";

document.addEventListener("DOMContentLoaded", () => {
  mount(HelloWorld);
});
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mount_point'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mount_point

MountPoint gem does not handle mounting the JavaScript component. To mount components to MountPoint nodes install [rails-mount-point Node package](https://www.npmjs.com/package/rails-mount-point):

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/westonkd/mount_point. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MountPoint project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/westonkd/mount_point/blob/master/CODE_OF_CONDUCT.md).
