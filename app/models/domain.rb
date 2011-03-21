class Domain < ActiveRecord::Base
  belongs_to :translation
  validates_presence_of :content
end
