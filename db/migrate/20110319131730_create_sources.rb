class CreateSources < ActiveRecord::Migration
  def self.up
    create_table :sources do |t|
      t.integer :translation_id
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :sources
  end
end
