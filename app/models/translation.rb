class Translation < ActiveRecord::Base
  has_one :source, :dependent => :destroy
  has_one :target, :dependent => :destroy
  #has_one :domain, :dependent => :destroy
  
  #has_many :domains, :class_name => "domain", :foreign_key => "reference_id"
  
  has_and_belongs_to_many :domains
  
  accepts_nested_attributes_for :source
  accepts_nested_attributes_for :target
  accepts_nested_attributes_for :domains, :reject_if => proc {|attrs| attrs['content'].blank? }
  
  def Translation.new_with_relations
    translation = Translation.new
    translation.build_source
    translation.build_target
    translation.domains.build
    translation.domains.build
    translation.domains.build
    translation
  end
  
  def check_domains
    (3 - self.domains.count).times do self.domains.build end
  end
  
end
