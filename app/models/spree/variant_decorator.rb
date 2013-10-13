Spree::Variant.class_eval do
  has_one :dropboxed

  # Is this variant to be downloaded by the customer?
  def digital?
    dropboxed.present?
  end

end
