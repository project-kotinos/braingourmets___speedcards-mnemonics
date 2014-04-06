##
# This model represents a registry entry with a key and value.
#
# @author Oliver Klee
#
class RegistryEntry < ActiveRecord::Base
  validates :key, presence: true, uniqueness: true

  attr_immutable :key
  attr_accessor :value
end
