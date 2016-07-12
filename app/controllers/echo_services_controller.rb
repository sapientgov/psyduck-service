class EchoServicesController < ApplicationController
  def index
    if params[:param] != nil
      @param = params[:param]
    end
    respond_to do |format|
       format.json { render json: {param: @param}}
    end
  end
end
