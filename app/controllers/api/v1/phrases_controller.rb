class Api::V1::PhrasesController < ApplicationController

  def index
    #code
    @phrases = Phrase.all
    render json: @phrases
  end

end
