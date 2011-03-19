class TranslationsController < InheritedResources::Base
  
  def new
    @translation = Translation.new_with_relations
  end
  
end
