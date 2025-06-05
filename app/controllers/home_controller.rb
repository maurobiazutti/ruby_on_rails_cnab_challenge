class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @uploaded_file = UploadedFile.new
  end
end
