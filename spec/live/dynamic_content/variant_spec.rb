require 'core/spec_helper'

describe ZendeskAPI::DynamicContent::Item::Variant, :delete_after do
  def valid_attributes
    {
      :locale_id => 2,
      :active => true,
      :default => false,
      :content => 'Ruby SDK Test Variant Content'
    }
  end

  under dynamic_content_item do
    it_should_be_readable dynamic_content_item, :variants, :create => true
    it_should_be_creatable
    it_should_be_updatable :content
    it_should_be_deletable
  end
end
