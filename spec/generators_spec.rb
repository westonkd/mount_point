require 'json'

RSpec.describe MountPoint::Generators do
  describe '#mount_point' do
    include MountPoint::Generators

    before do
      allow(self).to receive(:content_tag) { 'banana' }
    end

    let(:component_name) { 'my_component' }
    let(:props) { {props_one: 'value one'} }
    let(:as) { :span }

    it 'creates a mount point' do
      expect(self).to receive(:content_tag).with(
        as,
        '',
        {
          'data-props' => props.to_json,
          'id' => "#{component_name}_mount_point"
        }
      )
      mount_point(component_name, props: props, as: as)
    end
  end
end