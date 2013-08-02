class PagesController < ApplicationController
  def home
    @c_chord = Chord.where(root_note: "C", chord_quality: "Major").load.first
  end
end
