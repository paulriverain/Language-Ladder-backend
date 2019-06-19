class Api::V1::PhrasesController < ApplicationController

  def index
    #code
    @phrases = Phrase.all
    render json: @phrases
  end

  def create
    # byebug
    @phrase = Phrase.create(user_id: params[:user_id], language_id: params[:language_id], user_message: params[:user_message], new_message: params[:new_message])
    render json:  @phrase
  end

  def destroy
    # byebug
    @phrase = Phrase.find(params[:id])
    @phrase.destroy
    render json: {message: "Successfully deleted this Phrase!"}
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
    # byebug
          translation = translate.translate text, to: target
          # translation = "bread"
    # byebug
          render json: {message: translation}
  end




end
