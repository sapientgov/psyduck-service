class ValidatePasswordsController < ApplicationController
  before_action :set_validate_password, only: [:validate]

  # POST /validate_passwords
  # POST /validate_passwords.json
  def check
    
    logger.debug("***" + params[:validate_password][:login])
    result = ValidatePassword.find_by(login: params[:validate_password][:login], password: params[:validate_password][:password])

    respond_to do |format|
      if result && result.length == 1
        format.json { render json: {}, status: :ok}
      else
        format.json { render json: {}, status: :unprocessable_entity }
      end
    end
  end

end
