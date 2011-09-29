class CreateMyChangesLoggings < ActiveRecord::Migration
  def change
    create_table :my_changes_loggings do |t|
      t.integer :logable_id
      t.string  :logable_type

      t.timestamps
    end
  end
end
