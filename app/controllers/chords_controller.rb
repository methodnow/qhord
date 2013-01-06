class ChordsController < ApplicationController
  def voicing
    @voicing = Voicing.find(params[:voicing])
    @root = params[:root]
  end
end
