class TranslationsController < InheritedResources::Base
  belongs_to :user
  before_filter :require_user
  before_filter :security_check
  
  def new
    @user = parent
    @translation = Translation.new_with_relations
  end
  
  def edit
    @user = parent
    @translation = resource
    @translation.check_domains
  end
  
  private
    def security_check
      if parent.id != current_user.id
        flash[:notice] = "You don't have permissions"
        redirect_to root_path
      end
    end
  
end
