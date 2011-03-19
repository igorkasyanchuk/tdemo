class CreateTranslations < ActiveRecord::Migration
  def self.up
    create_table :translations do |t|
      t.integer :source_id
      t.integer :target_id
      t.integer :domain_id
      t.boolean :is_public, :default => false
    end
  end

  def self.down
    drop_table :translations
  end
end
