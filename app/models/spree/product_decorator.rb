Spree::Product.class_eval do
  has_many :dropboxeds, :through => :variants_including_master
end
