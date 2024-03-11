class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def update
    if @profile.update(profile_params)
      redirect_to profile_path(@profile), notice: 'Shining bright like a diamond.'
    else
      render :edit
    end
  end

  def destroy
    @profile.destroy
    redirect_to root_path, notice: 'Profile was successfully deleted.'
  end

  private

  def set_profile
    @profile = current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:user_name, :description, :diet, :location, :photo, :user_id)
  end
end
