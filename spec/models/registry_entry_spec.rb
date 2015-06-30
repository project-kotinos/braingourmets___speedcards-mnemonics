require 'rails_helper'

RSpec.describe RegistryEntry, type: :model do
  subject(:registry_entry) { create(:registry_entry) }

  describe '#key' do
    it 'must exist' do
      another_registry_entry = build(:registry_entry, key: nil)
      another_registry_entry.valid?
      expect(another_registry_entry.errors[:key].size).to eq(1)
    end

    it { is_expected.to validate_uniqueness_of(:key) }

    it 'cannot be overwritten' do
      expect do
        registry_entry.key = 'other key'
      end.to raise_error(ActiveRecord::ImmutableAttributeError)
    end
  end

  describe '#value' do
    it 'can be overwritten' do
      registry_entry.value = 'a new value'
      expect(registry_entry.value).to eq('a new value')
    end
  end
end
