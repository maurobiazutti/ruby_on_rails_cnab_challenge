class UploadsController < ApplicationController
  before_action :authenticate_user!

  def new
    @uploaded_file = UploadedFile.new
  end

  def create
    @uploaded_file = UploadedFile.new(uploaded_file_params)

    if @uploaded_file.save
      redirect_to root_path, notice: "Arquivo enviado com sucesso."
    else
      render 'home/index', status: :unprocessable_entity
    end
  end

  private
  def uploaded_file_params
    params.require(:uploaded_file).permit(:file)
  end
end
