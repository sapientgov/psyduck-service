class EchoServicesController < ApplicationController
  def index
    respond_to do |format|
      format.json { render json: params.except(:controller,:action,:format).each { |val| puts val } }
    end
  end
end
