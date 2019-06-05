class Api::V1::LanguagesController < ApplicationController
  def index
    #code
    @languages = Language.all
    render json: @languages
  end




  # # Your Google Cloud Platform project ID
  # project_id = "[priject id]"
  #
  # # Instantiates a client
  # translate = Google::Cloud::Translate.new project: project_id
  #
  # # The text to translate
  # text = "Hello, world!"
  # # The target language
  # target = "ru"
  #
  # # Translates some text into Russian
  # translation = translate.translate text, to: target
  #
  # puts "Text: #{text}"
  # puts "Translation: #{translation}"
  # # [END translate_quickstart]
  #




end
