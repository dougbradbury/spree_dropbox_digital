require 'spec_helper'
require 'spree/dropboxed'
describe Spree::Dropboxed do
  let(:variant) { create(:variant) }

  it "should make one" do
    dropbox = described_class.create!(:variant => variant)
    dropbox.dropboxed_links.create!
    dropbox.dropboxed_links.count.should == 1
    variant.reload
    variant.dropboxed.id.should == dropbox.id
  end
end
