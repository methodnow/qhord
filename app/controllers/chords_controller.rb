class ChordsController < ApplicationController

  def root
    @chords = Chord.find_all_by_root_note(params[:root])
  end

  def show
    @chord = Chord.find_by_chord_name(params[:chord_name])
  end

  def voicing
    @voicing = Voicing.find(params[:voicing])
    @root = params[:root]
    @chord_name = "#{params[:root]}_#{params[:type]}"
  end
end
