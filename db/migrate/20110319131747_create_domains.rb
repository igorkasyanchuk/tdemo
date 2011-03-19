class CreateDomains < ActiveRecord::Migration
  def self.up
    create_table :domains do |t|
      t.integer :translation_id
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :domains
  end
end
