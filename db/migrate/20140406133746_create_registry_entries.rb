class CreateRegistryEntries < ActiveRecord::Migration
  def change
    create_table :registry_entries do |t|
      t.string :key, unique: true, null: false
      t.string :value

      t.timestamps
    end

    add_index :registry_entries, :key
  end
end
