# frozen_string_literal: true

FactoryBot.define do
  factory :registry_entry, class: RegistryEntry do
    key 'some-key'
    value 'some-value'
  end
end
