class Target < ActiveRecord::Base
  belongs_to :translation
  validates_presence_of :content
  
  after_save :set_dependencies
  
  def set_dependencies
    translation.target_id = self.id
    translation.save
  end
end
