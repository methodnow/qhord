class Voicing < ActiveRecord::Base
  belongs_to :chord
  serialize :fingering, Hash
  serialize :bass, Array
  serialize :open, Array
  serialize :formula, Array
end
