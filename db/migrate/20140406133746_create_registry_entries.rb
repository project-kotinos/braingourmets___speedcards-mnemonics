# frozen_string_literal: true

class CreateRegistryEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :registry_entries do |t|
      t.string :key, unique: true, null: false
      t.string :value

      t.timestamps null: false
    end

    add_index :registry_entries, :key
  end
end
