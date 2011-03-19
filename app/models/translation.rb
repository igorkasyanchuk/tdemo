class Translation < ActiveRecord::Base
  has_one :source, :dependent => :destroy
  has_one :target, :dependent => :destroy
  has_one :domain, :dependent => :destroy
  
  accepts_nested_attributes_for :source
  accepts_nested_attributes_for :target
  accepts_nested_attributes_for :domain
  
  def Translation.new_with_relations
    translation = Translation.new
    translation.build_source
    translation.build_target
    translation.build_domain
    translation
  end
  
end
