require 'spec_helper'

##
# @author Oliver Klee
#
describe RegistryEntry do
  let(:registry_entry) { create(:registry_entry) }

  describe '#key' do
    it 'must exist' do
      another_registry_entry = build(:registry_entry, key: nil)
      expect(another_registry_entry).to have(1).error_on(:key)
    end

    it 'is unique' do
      another_registry_entry = build(:registry_entry, key: registry_entry.key)
      expect(another_registry_entry).to have(1).error_on(:key)
    end

    it 'cannot be overwritten' do
      expect { registry_entry.key = 'other key' }.to raise_error
    end
  end

  describe '#value' do
    it 'can be overwritten' do
      registry_entry.value = 'a new value'
      expect(registry_entry.value).to eq('a new value')
    end
  end
end
