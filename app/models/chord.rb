class Chord < ActiveRecord::Base
  has_many :voicings

  def default_voicing
    voicings.first
  end
end
