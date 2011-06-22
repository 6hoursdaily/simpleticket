class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.string :summary
      t.text :description
      t.boolean :fixed

      t.timestamps
    end
  end

  def self.down
    drop_table :issues
  end
end
