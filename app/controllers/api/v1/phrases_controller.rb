class Api::V1::PhrasesController < ApplicationController

  def index
    #code
    @phrases = Phrase.all
    render json: @phrases
  end

  def translate_message
    # Your Google Cloud Platform project ID

    project_id = ENV["CLOUD_PROJECT_ID"]

    # Instantiates a client

    translate = Google::Cloud::Translate.new project: project_id

    # The text to translate
    text = params[:orMess]

    # The target language
    target = params[:currentLang]

    # Translates some text into selected language
    translation = translate.translate text, to: target

    # byebug



    render json: {message: translation}
  end




end
