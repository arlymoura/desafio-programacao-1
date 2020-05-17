class UploadsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    parser_file_job
 
    flash[:success] = "Estamos processando o arquivo de comporas \\o/"
    redirect_to '/home'
  end

  private

  def parser_file_job
    file = params[:file] if params[:file]
    #FilePurchasesParserJob.perform_later(file) 
    FilePurchasesParserJob.perform_now(file) 
  end
  
end
