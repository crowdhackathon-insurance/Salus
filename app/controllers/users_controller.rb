class UsersController < ApplicationController
  before_action :set_user_api, only: [:update_user_data, :insert_feeling, :make_appointment, :get_hearth_rate]
  protect_from_forgery :except => [:update_user_data, :insert_feeling, :make_appointment, :get_hearth_rate]

  def update_user_data
    @user = @user.update(user_params)

    respond_to do |format|
      if @user
        format.json { render json: @user.to_json }
      else
        format.json { render json: @user.errors }
      end
    end
  end

  def get_hearth_rate
    respond_to do |format|
        format.json { render json: {"heart_rate" => 35 }.to_json }
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_api
      token = request.headers["user"]
      @user = User.find_by(user_token:token)
      if not @user then 

      conn1 = Faraday.new(:url => 'https://mindnodesbot.herokuapp.com') do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
      resp = conn1.post do |req|
        req.url '/api/user/'
        req.headers['Content-Type'] = 'application/json'
        req.headers['token'] = token rescue 'null'
      end
      response = JSON.parse resp.body rescue nil
      if (not response) || (response['success'] == 0) then
        raise ActionController::RoutingError.new('Not Found')
        return
      else
        @user = User.create!(user_token: token, first_name: response['result']['first_name'], last_name: response['result']['last_name'], profile_image: response['result']['profile_image'] )
      end
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :age, :weight, :height, :smoke, :fit)
    end
end
