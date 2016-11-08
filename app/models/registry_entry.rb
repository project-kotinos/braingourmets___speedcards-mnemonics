# frozen_string_literal: true

##
# This model represents a registry entry with a key and value.
#
# @author Oliver Klee
#
class RegistryEntry < ApplicationRecord
  validates :key, presence: true, uniqueness: true

  attr_immutable :key
end
