class Chord < ActiveRecord::Base
  serialize :fingering, Hash
  serialize :bass, Array
  serialize :open, Array
end
