class ClientsController < ApplicationController
  def index
    @clients = Paymill::Client.all
  end
end
