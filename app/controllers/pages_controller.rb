class PagesController < ApplicationController
  def home
    @c_chord = Chord.find_by_name("C")
    @f_chord = Chord.find_by_name("F")
  end
end
