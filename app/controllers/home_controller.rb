class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @uploaded_file = UploadedFile.new
    # @transactiontype = TransactionType.all
    # @stores = Store.all
    # @transactions = Transaction.all.includes(:store, :transaction_type).order(date: :desc, time: :desc)
    #
     @stores = Store.includes(transactions: :transaction_type)
  end
end
