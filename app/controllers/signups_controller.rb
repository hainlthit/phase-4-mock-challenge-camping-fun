class SignupsController < ApplicationController

    def create
        new_signup = Signup.create!(signup_params)
        render json: new_signup.activity, status: :created
    end

    private

    def signup_params
        params.permit(:camper_id, :activity_id, :time)
    end
end
