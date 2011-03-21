class AddUserIdToTranslations < ActiveRecord::Migration
  def self.up
    Translation.destroy_all
    add_column :translations, :user_id, :integer
    add_index :translations, :user_id
  end

  def self.down
    remove_index :translations, :user_id
    remove_column :translations, :user_id
  end
end
