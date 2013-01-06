class PagesController < ApplicationController
  def home
    @c_chord = Chord.where(root_note: "C", chord_type: "Major").load.first
  end
end
