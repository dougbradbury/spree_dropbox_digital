module Spree
  class Dropboxed < ActiveRecord::Base
    attr_accessible :variant
    belongs_to :variant
    has_many :dropboxed_links, :dependent => :destroy

  end
end
