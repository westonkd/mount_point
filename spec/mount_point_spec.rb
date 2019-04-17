require 'byebug'

RSpec.describe MountPoint do
  it "has a version number" do
    expect(MountPoint::VERSION).not_to be nil
  end

  it "does something useful" do
    byebug
    expect(false).to eq(true)
  end
end
